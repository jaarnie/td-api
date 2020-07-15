module Types
  class EntryType < Types::BaseObject
    field :id, ID, null: false
    field :user_id, Integer, null: false
    field :therapist_id, Integer, null: false
    field :content, String, null: false
    field :content_title, String, null: true
    field :mood, String, null: true
    field :user_entry_datetime, String, null: true
  end
end
