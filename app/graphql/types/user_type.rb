module Types
  class UserType < Types::BaseObject
    field :id, ID, null: false
    field :username, String, null: false
    field :first_name, String, null: false
    field :last_name, String, null: false
    field :password_digest, String, null: false
    field :is_therapist, Boolean, null: false
    field :entries, [Types::EntryType], null: false
  end
end
