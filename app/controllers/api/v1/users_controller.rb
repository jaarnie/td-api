class Api::V1::UsersController < ApplicationController
  before_action :set_user, only: [:show, :update, :destroy]

  def index
    @users = User.all

    json_string = UserSerializer.new(@users).serialized_json
    render json: json_string
  end

  def show
    json_string = UserSerializer.new(@user).serialized_json
    # require 'pry'; binding.pry

    render json: @json_string
  end

  def create
    @user = User.new(user_params)

    if @user.save
      render json: @user, status: :created
    else
      render json: @user.errors, status: :unprocessable_entity
    end
  end

  def login 
    @user = User.find_by(username: params[:username])
    @therapist = Therapist.find_by(username: params[:username])

    if @user && @user.authenticate(params[:password])
      render json: @user
    elsif @therapist && @therapist.authenticate(params[:password])
      render json: @therapist
    else
      render json: {error: 'Invalid User'}, status: 402
    end
  end

  def update
    if @user.update(user_params)
      render json: @user
    else
      render json: @user.errors, status: :unprocessable_entity
    end
  end


  private

    def set_user
      @user = User.find(params[:id])
    end

    def user_params
      params.require(:user).permit(:username, :first_name, :last_name, :password_digest, :is_therapist)
    end
end
