class EntrySerializer < ActiveModel::Serializer
  attributes :id, :content_title, :content, :mood, :user_entry_datetime, :user, :therapist_id
  belongs_to :user
  belongs_to :therapist
end
