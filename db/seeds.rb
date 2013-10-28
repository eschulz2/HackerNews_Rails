require 'faker'

User.create(email:'rskelley9@gmail.com', password: 'password')
User.create(email:'eschulz2@gmail.com', password: 'password')

10.times do 
  User.create(email: Faker::Internet.email, password: 'password')
end

40.times do
  user_id = (1..10).to_a
  post_id = (1..20).to_a
  
  Comment.create(content: Faker::Lorem.sentence(word_count = 4), post_id: post_id.sample, user_id: user_id.sample)
end

20.times do
  user_id = (1..10).to_a
  Post.create(title: Faker::Lorem.sentence(word_count = 4), user_id: user_id.sample, content: Faker::Lorem.sentence(word_count = 9))
end
