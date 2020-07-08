class Therapist < ApplicationRecord
  has_secure_password
  
  has_many :entries
  has_many :users, through: :entries
end
 