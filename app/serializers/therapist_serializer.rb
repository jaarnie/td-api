class TherapistSerializer < ActiveModel::Serializer
  attributes :id, :username, :first_name, :last_name, :is_therapist
  has_many :entries
  has_many :users, through: :entries
end
