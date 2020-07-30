# frozen_string_literal: true


FactoryBot.define do
  # user = create(:user)
  # therapist = create(:therapist)

  factory :entry do
    content_title { Faker::Lorem.word }
    content { Faker::Quotes::Shakespeare.hamlet_quote }
    mood { 'Happy' }
    user_entry_datetime { Faker::Time.between(from: DateTime.now - 1, to: DateTime.now) }
    user_id { Faker::Number.number(digits: 1) }
    therapist_id { Faker::Number.number(digits: 1) }
  end
end
