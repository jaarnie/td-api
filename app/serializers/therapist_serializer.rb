class TherapistSerializer < ActiveModel::Serializer
  attributes :id, :email, :first_name, :last_name, :type, :entries, :clients

  def entries
    object.entries
  end

  def clients
    object.users.uniq
  end
end
