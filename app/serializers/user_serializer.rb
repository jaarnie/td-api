class UserSerializer < ActiveModel::Serializer
  attributes :id, :email, :first_name, :last_name, :entries

  # has_many :entries
  has_many :therapists, through: :entries

  def entries 
    return self.object.entries
  end
end
