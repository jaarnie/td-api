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
u1 = User.create(username: '2', first_name: 'Adam', last_name: 'Arnold', password: '2')
u2 = User.create(username: '1', first_name: 'Kat', last_name: 'Nemcova', password: '1')

Therapist.delete_all
t1 = Therapist.create(username: '3', first_name: 'Bob', last_name: 'Test', password: '3')
t2 = Therapist.create(username: '4', first_name: 'Sue', last_name: 'Therapist', password: '4')

Entry.delete_all
e1 = Entry.create(user: u1,
                  therapist_id: t1.id,
                  content: '{lalalalala}',
                  content_title: 'Title',
                  mood: 'happy',
                  user_entry_datetime: '2020-01-28T19:36:11.856Z')
                  
e1 = Entry.create(user: u1,
                  therapist_id: t2.id,
                  content: '{blahb blah blah}',
                  content_title: 'Title',
                  mood: 'sad',
                  user_entry_datetime: '2020-01-28T19:36:11.856Z')
                  
e1 = Entry.create(user: u2,
                  therapist_id: t1.id,
                  content: '{hohohohooooo}',
                  content_title: 'Title',
                  mood: 'neutral',
                  user_entry_datetime: '2020-01-28T19:36:11.856Z')
                  
e1 = Entry.create(user: u2,
                  therapist_id: t1.id,
                  content: '{lololololol}',
                  content_title: 'Title',
                  mood: 'happy',
                  user_entry_datetime: '2020-01-28T19:36:11.856Z')
                  
e1 = Entry.create(user: u1,
                  therapist_id: t2.id,
                  content: '{doodoodoodoodoodeee}',
                  content_title: 'Title',
                  mood: 'neutral',
                  user_entry_datetime: '2020-01-28T19:36:11.856Z')
