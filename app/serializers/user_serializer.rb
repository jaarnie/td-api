class UserSerializer < ActiveModel::Serializer
  attributes :id, :email, :first_name, :last_name, :therapists, :entries

  # has_many :therapists, through: :entries

  def entries
    entries = []
    object.entries.each do |e|
      attributes = e.attributes
      full_name = object.first_name + ' ' + object.last_name
      attributes[:username] = full_name
      entries << attributes
    end
    entries
  end

  def therapists
    object.therapists.uniq
  end
end
