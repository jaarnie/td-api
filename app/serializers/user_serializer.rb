class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :first_name, :last_name
  has_many :entries
  has_many :therapists, through: :entries
  

  # def user_therapists
  #   # require 'pry'; binding.pry
  #   Therapist.joins(:entries).where(user_id: self.object.id)
  # end
end
