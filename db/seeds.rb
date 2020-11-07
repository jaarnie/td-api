User.destroy_all
u1 = User.create(email: '2@2', first_name: 'Adam', last_name: 'Arnold', password: '2')
u2 = User.create(email: '1@1', first_name: 'Kat', last_name: 'Nemcova', password: '1')

5.times do
  email = Faker::Internet.email
  first_name = Faker::Name.first_name
  last_name = Faker::Name.last_name
  password = Faker::Lorem.word

  User.create(email: email, first_name: first_name, last_name: last_name, password: password)
end

Therapist.destroy_all
t1 = Therapist.create(email: '3@3', first_name: 'Bob', last_name: 'Test', password: '3')
t2 = Therapist.create(email: '4@4', first_name: 'Sue', last_name: 'Therapist', password: '4')

5.times do
  email = Faker::Internet.email
  first_name = Faker::Name.first_name
  last_name = Faker::Name.last_name
  password = Faker::Lorem.word

  Therapist.create(email: email, first_name: first_name, last_name: last_name, password: password)
end

Entry.destroy_all
20.times do
  # user = User.all.sample
  user = u1
  therapist_id = Therapist.all.sample.id
  content = Faker::Quotes::Shakespeare.romeo_and_juliet_quote
  content_title = Faker::Lorem.word.capitalize
  mood = %w[Happy Neutral Sad].sample
  user_entry_datetime = Faker::Time.between(from: DateTime.now - 7, to: DateTime.now)

  Entry.create(user: user, therapist_id: therapist_id, content: content, content_title: content_title, mood: mood, user_entry_datetime: user_entry_datetime)
end
