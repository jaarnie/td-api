class Entry < ApplicationRecord
  belongs_to :user
  belongs_to :therapist
end
