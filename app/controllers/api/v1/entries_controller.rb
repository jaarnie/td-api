# frozen_string_literal: true

class Api::V1::EntriesController < ApplicationController
  before_action :set_entry, only: %i[show update destroy]

  # GET /entries
  def index
    @entries = current_user.entries

    json_response(@entries)
  end

  # GET /entries/1
  def show
    json_response(@entry)
  end

  # POST /entries
  def create
    @entry = current_user.entries.create!(entry_params)
    json_response(@entry, :created)
  end

  # In our create method note that we're using 
  # create! instead of create. 
  # This way, the model will raise an exception 
  # ActiveRecord::RecordInvalid. This way, we can avoid 
  # deep nested if statements in the controller. 
  # Thus, we rescue from this exception in the 
  # ExceptionHandler module.

  # PATCH/PUT /entries/1
  def update
    @entry.update(entry_params)
    head :no_content
  end

  # DELETE /entries/1
  def destroy
    @entry.destroy
    head :no_content
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_entry
    @entry = Entry.find(params[:id])
  end

  # Only allow a trusted parameter "white list" through.
  def entry_params
    params.permit(:content_title, :content, :mood, :user_entry_datetime, :user_id, :therapist_id)
  end
end
