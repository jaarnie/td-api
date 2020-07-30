FactoryBot.define do 
  factory :therapist, class: :user do
    email { Faker::Internet.email }
    first_name { Faker::Name.first_name}
    last_name { Faker::Name.last_name}
    password_digest { 'randomsaltedpassword' }
    type { 'user'}
  end
end
