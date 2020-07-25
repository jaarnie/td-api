class TherapistSerializer < ActiveModel::Serializer
  attributes :id, :username, :first_name, :last_name

  has_many :entries
end
