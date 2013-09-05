require 'faker'

10.times do 
  User.create(name: Faker::Internet.email, password_hash: Faker::Lorem.word)
end

10.times do 
  Post.create(title:       Faker::Lorem.sentence,
              description: Faker::Lorem.sentence,
              url:         Faker::Internet.url,
              user_id:     rand(10) + 1)
end

100.times do 
  Comment.create(body:    Faker::Lorem.sentence,
                 post_id: rand(10) + 1,
                 user_id: rand(10) + 1)
end 
