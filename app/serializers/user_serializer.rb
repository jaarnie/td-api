class UserSerializer
  include FastJsonapi::ObjectSerializer
  attributes :username, :first_name, :last_name, :is_therapist
  has_many :entries
  has_many :therapists, through: :entries
end
