# frozen_string_literal: true

class Api::V1::UsersController < ApplicationController
  skip_before_action :authorize_request, only: :create
  before_action :set_user, only: %i[profile update destroy]

  # POST /signup
  # return authenticated token upon signup

  # The users controller attempts to create a user
  # and returns a JSON response with the result.
  # We use Active Record's create! method so that in the
  # event there's an error, an exception will be raised
  # and handled in the exception handler.

  def create
    user = User.create!(user_params)
    auth_token = AuthenticateUser.new(user.email, user.password).call
    response = { message: Message.account_created, auth_token: auth_token }
    json_response(response, :created)
  end

  def profile
    render json: @user
  end

  def update
    @user.update(user_params)
    require 'pry'; binding.pry
    head :no_content
  end

  def destroy
    @user.destroy
    head :no_content
  end

  private

  def set_user
    @user = User.find(current_user.id)
    # @user = User.find(params[:id])
  end

  def user_params
    params.require(:user).permit(
      :email,
      :password,
      :password_confirmation,
      :first_name,
      :last_name
    )
  end
end
