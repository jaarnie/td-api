class EntrySerializer < ActiveModel::Serializer
  attributes :id, :content_title, :content, :mood, :user_entry_datetime, :therapist_id, :user_full_name
  belongs_to :user
  belongs_to :therapist

  # def user
  #   require 'pry'; binding.pry
  # end

  def user_full_name
    user = object.user
    user.first_name + " " + user.last_name
  end

end
