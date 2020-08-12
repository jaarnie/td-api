class UserSerializer < ActiveModel::Serializer
  attributes :id, :email, :first_name, :last_name, :entries, :therapists

  # has_many :therapists, through: :entries

  def entries 
    object.entries
  end

  def therapists
    object.therapists.uniq
  end
end
