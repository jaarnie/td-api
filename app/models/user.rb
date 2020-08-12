# frozen_string_literal: true

class User < ApplicationRecord
  has_secure_password

  has_many :entries
  has_many :therapists, through: :entries

  validates :email, uniqueness: true, format: { with: URI::MailTo::EMAIL_REGEXP }, presence: true
  validates :password, presence: :true, confirmation: true, length: { minimum: 6}
  validates :first_name, :last_name, presence: true
end
