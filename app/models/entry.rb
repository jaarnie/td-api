class Entry < ApplicationRecord
  # attr_accessor :user_id, :therapist_id, :content, :content_title, :mood
  belongs_to :user
  belongs_to :therapist
end
