class User < ApplicationRecord
  has_secure_password
  
  has_many :entries
  has_many :therapists, through: :entries
end
