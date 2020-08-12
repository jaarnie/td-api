# # This file should contain all the record creation needed to seed the database with its default values.
# # The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
# #
# # Examples:
# #
# #   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
# #   Character.create(name: 'Luke', movie: movies.first)


# User.delete_all
# u1 = User.create(username: '2', first_name: 'Adam', last_name: 'Arnold', password: '2', is_therapist: false)
# u2 = User.create(username: '1', first_name: 'Kat', last_name: 'Nemcova', password: '1', is_therapist: false)

# Therapist.delete_all
# t1 = Therapist.create(username: '3', first_name: 'Bob', last_name: 'Test', password: '3',  is_therapist: true)
# t2 = Therapist.create(username: '4', first_name: 'Sue', last_name: 'Test', password: '4',  is_therapist: true)

#                   # "{\"blocks\":[{\"key\":\"u3c9\",\"text\":\"asasdasdddd\",\"type\":\"unstyled\",\"depth\":0,\"inlineStyleRanges\":[],\"entityRanges\":[],\"data\":{}}],\"entityMap\":{}}"
                  
                  
# User.delete_all
# u1 = User.create(username: '2', first_name: 'Adam', last_name: 'Arnold', password: '2', is_therapist: false)
# u2 = User.create(username: '1', first_name: 'Kat', last_name: 'Nemcova', password: '1', is_therapist: false)

# Therapist.delete_all
# t1 = Therapist.create(username: '3', first_name: 'Bob', last_name: 'Test', password: '3', is_therapist: true)
# t2 = Therapist.create(username: '4', first_name: 'Sue', last_name: 'Therapist', password: '4', is_therapist: true)


User.delete_all
u1 = User.create(email: '2@2', first_name: 'Adam', last_name: 'Arnold', password: '2')
u2 = User.create(email: '1@1', first_name: 'Kat', last_name: 'Nemcova', password: '1')

5.times do
  email = Faker::Internet.email
  first_name = Faker::Name.first_name
  last_name = Faker::Name.last_name
  password = Faker::Lorem.word

  User.create(email: email, first_name: first_name, last_name: last_name, password: password)
end

Therapist.delete_all
t1 = Therapist.create(email: '3@3', first_name: 'Bob', last_name: 'Test', password: '3')
t2 = Therapist.create(email: '4@4', first_name: 'Sue', last_name: 'Therapist', password: '4')

5.times do
  email = Faker::Internet.email
  first_name = Faker::Name.first_name
  last_name = Faker::Name.last_name
  password = Faker::Lorem.word

  Therapist.create(email: email, first_name: first_name, last_name: last_name, password: password, type: 'Therapist')
end

Entry.delete_all
# e1 = Entry.create(user: u1,
#                   therapist_id: t1.id,
#                   content: '{lalalalala}',
#                   content_title: 'Title',
#                   mood: 'happy',
#                   user_entry_datetime: '2020-01-28T19:36:11.856Z')
                  
# e1 = Entry.create(user: u1,
#                   therapist_id: t2.id,
#                   content: '{blahb blah blah}',
#                   content_title: 'Title',
#                   mood: 'sad',
#                   user_entry_datetime: '2020-01-28T19:36:11.856Z')
                  
# e1 = Entry.create(user: u2,
#                   therapist_id: t1.id,
#                   content: '{hohohohooooo}',
#                   content_title: 'Title',
#                   mood: 'neutral',
#                   user_entry_datetime: '2020-01-28T19:36:11.856Z')
                  
# e1 = Entry.create(user: u2,
#                   therapist_id: t1.id,
#                   content: '{lololololol}',
#                   content_title: 'Title',
#                   mood: 'happy',
#                   user_entry_datetime: '2020-01-28T19:36:11.856Z')
                  
# e1 = Entry.create(user: u1,
#                   therapist_id: t2.id,
#                   content: '{doodoodoodoodoodeee}',
#                   content_title: 'Title',
#                   mood: 'neutral',
#                   user_entry_datetime: '2020-01-28T19:36:11.856Z')

mood = ["Happy", "Neutral", "Sad"]

20.times do
  user = User.all.sample
  therapist_id = Therapist.all.sample.id
  content = Faker::Quotes::Shakespeare.romeo_and_juliet_quote
  content_title = Faker::Lorem.word.capitalize
  mood = mood.sample
  user_entry_datetime = Faker::Time.between(from: DateTime.now - 1, to: DateTime.now)

  Entry.create(user: user, therapist_id: therapist_id, content: content, content_title: content_title, mood: mood, user_entry_datetime: user_entry_datetime)
end
