# frozen_string_literal: true

class Entry < ApplicationRecord
  belongs_to :user
  belongs_to :therapist

  validates :content_title, :content, :mood, :user_entry_datetime, :user_id, :therapist_id, presence: true
end
