# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Label.create!(label_name: "かいがいむけ")
Label.create!(label_name: "こくないむけ")
Label.create!(label_name: "こじん")
Label.create!(label_name: "かぞく")
Label.create!(label_name: "かいしゃ")

User.create!(name: "Example User",
             email: "example@railstutorial.org",
             password:              "foobar",
             password_confirmation: "foobar",
             admin: true)

5.times do |n|
  name = Faker::Name.name
  email = "example-#{n+1}@railstutorial.org"
  password = "password"
  User.create!(name: name,
               email: email,
               password: password,
               password_confirmation: password
               )
end


  # 10.times do |n|
  #   title = Faker::Pokemon.name
  #   content = Faker::Pokemon.name
  #   limit_time = Faker::Date.between(2.days.ago, Date.today)
  #   status = Faker::Number.between(1, 3)
  #   priority_color = Faker::Color.color_name
  #
  #   Task.create!(title: title,
  #                content: content,
  #                limit_time: limit_time,
  #                status: status,
  #                priority_color: priority_color,
  #                )
  # end
  #
  # 10.times do |n|
  #   title = Faker::Color.name
  #   content = Faker::Pokemon.name
  #   limit_time = Faker::Date.between(2.days.ago, Date.today)
  #   status = Faker::Number.between(1, 3)
  #   priority_color = Faker::Color.color_name
  #
  #   Task.create!(title: title,
  #                content: content,
  #                limit_time: limit_time,
  #                status: status,
  #                priority_color: priority_color,
  #                )
  # end
  #
  # 10.times do |n|
  #   title = Faker::Book.title
  #   content = Faker::Pokemon.name
  #   limit_time = Faker::Date.between(2.days.ago, Date.today)
  #   status = Faker::Number.between(1, 3)
  #   priority_color = Faker::Color.color_name
  #
  #   Task.create!(title: title,
  #                content: content,
  #                limit_time: limit_time,
  #                status: status,
  #                priority_color: priority_color,
  #                )
  # end
  #
  # 10.times do |n|
  #   title = Faker::Dog.name
  #   content = Faker::Pokemon.name
  #   limit_time = Faker::Date.between(2.days.ago, Date.today)
  #   status = Faker::Number.between(1, 3)
  #   priority_color = Faker::Color.color_name
  #
  #   Task.create!(title: title,
  #                content: content,
  #                limit_time: limit_time,
  #                status: status,
  #                priority_color: priority_color,
  #                )
  # end
  #
  # 10.times do |n|
  #   title = Faker::Food.fruits
  #   content = Faker::Pokemon.name
  #   limit_time = Faker::Date.between(2.days.ago, Date.today)
  #   status = Faker::Number.between(1, 3)
  #   priority_color = Faker::Color.color_name
  #
  #   Task.create!(title: title,
  #                content: content,
  #                limit_time: limit_time,
  #                status: status,
  #                priority_color: priority_color,
  #                )
  # end
  #
  #
  # 10.times do |n|
  #   title = Faker::Football.team
  #   content = Faker::Pokemon.name
  #   limit_time = Faker::Date.between(2.days.ago, Date.today)
  #   status = Faker::Number.between(1, 3)
  #   priority_color = Faker::Color.color_name
  #
  #   Task.create!(title: title,
  #                content: content,
  #                limit_time: limit_time,
  #                status: status,
  #                priority_color: priority_color,
  #                )
  # end
  #
  # 10.times do |n|
  #   title = Faker::Job.title
  #   content = Faker::Pokemon.name
  #   limit_time = Faker::Date.between(2.days.ago, Date.today)
  #   status = Faker::Number.between(1, 3)
  #   priority_color = Faker::Color.color_name
  #
  #   Task.create!(title: title,
  #                content: content,
  #                limit_time: limit_time,
  #                status: status,
  #                priority_color: priority_color,
  #                )
  # end
  #
  # 10.times do |n|
  #   title = Faker::Movie.quote
  #   content = Faker::Pokemon.name
  #   limit_time = Faker::Date.between(2.days.ago, Date.today)
  #   status = Faker::Number.between(1, 3)
  #   priority_color = Faker::Color.color_name
  #
  #   Task.create!(title: title,
  #                content: content,
  #                limit_time: limit_time,
  #                status: status,
  #                priority_color: priority_color,
  #                )
  # end
  #
  # 10.times do |n|
  #   title = Faker::Name.name
  #   content = Faker::Pokemon.name
  #   limit_time = Faker::Date.between(2.days.ago, Date.today)
  #   status = Faker::Number.between(1, 3)
  #   priority_color = Faker::Color.color_name
  #
  #   Task.create!(title: title,
  #                content: content,
  #                limit_time: limit_time,
  #                status: status,
  #                priority_color: priority_color,
  #                )
  # end
  #
  # 10.times do |n|
  #   title = Faker::Science.element
  #   content = Faker::Pokemon.name
  #   limit_time = Faker::Date.between(2.days.ago, Date.today)
  #   status = Faker::Number.between(1, 3)
  #   priority_color = Faker::Color.color_name
  #
  #   Task.create!(title: title,
  #                content: content,
  #                limit_time: limit_time,
  #                status: status,
  #                priority_color: priority_color,
  #                )
  # end
  #
  # 10.times do |n|
  #   title = Faker::Music.band
  #   content = Faker::Pokemon.name
  #   limit_time = Faker::Date.between(2.days.ago, Date.today)
  #   status = Faker::Number.between(1, 3)
  #   priority_color = Faker::Color.color_name
  #
  #   Task.create!(title: title,
  #                content: content,
  #                limit_time: limit_time,
  #                status: status,
  #                priority_color: priority_color,
  #                )
  # end
  #
  # 10.times do |n|
  #   title = Faker::Music.album
  #   content = Faker::Pokemon.name
  #   limit_time = Faker::Date.between(2.days.ago, Date.today)
  #   status = Faker::Number.between(1, 3)
  #   priority_color = Faker::Color.color_name
  #
  #   Task.create!(title: title,
  #                content: content,
  #                limit_time: limit_time,
  #                status: status,
  #                priority_color: priority_color,
  #                )
  # end
  #
  # 10.times do |n|
  #   title = Faker::Music.band
  #   content = Faker::Pokemon.name
  #   limit_time = Faker::Date.between(2.days.ago, Date.today)
  #   status = Faker::Number.between(1, 3)
  #   priority_color = Faker::Color.color_name
  #
  #   Task.create!(title: title,
  #                content: content,
  #                limit_time: limit_time,
  #                status: status,
  #                priority_color: priority_color,
  #                )
  # end
  #
  # 10.times do |n|
  #   title = Faker::Friends.character
  #   content = Faker::Pokemon.name
  #   limit_time = Faker::Date.between(2.days.ago, Date.today)
  #   status = Faker::Number.between(1, 3)
  #   priority_color = Faker::Color.color_name
  #
  #   Task.create!(title: title,
  #                content: content,
  #                limit_time: limit_time,
  #                status: status,
  #                priority_color: priority_color,
  #                )
  # end
  #
  # 10.times do |n|
  #   title = Faker::Company.name
  #   content = Faker::Pokemon.name
  #   limit_time = Faker::Date.between(2.days.ago, Date.today)
  #   status = Faker::Number.between(1, 3)
  #   priority_color = Faker::Color.color_name
  #
  #   Task.create!(title: title,
  #                content: content,
  #                limit_time: limit_time,
  #                status: status,
  #                priority_color: priority_color,
  #                )
  # end
  #
  # 10.times do |n|
  #   title = Faker::Beer.name
  #   content = Faker::Pokemon.name
  #   limit_time = Faker::Date.between(2.days.ago, Date.today)
  #   status = Faker::Number.between(1, 3)
  #   priority_color = Faker::Color.color_name
  #
  #   Task.create!(title: title,
  #                content: content,
  #                limit_time: limit_time,
  #                status: status,
  #                priority_color: priority_color,
  #                )
  # end
  #
  # 10.times do |n|
  #   title = Faker::Company.name
  #   content = Faker::Pokemon.name
  #   limit_time = Faker::Date.between(2.days.ago, Date.today)
  #   status = Faker::Number.between(1, 3)
  #   priority_color = Faker::Color.color_name
  #
  #   Task.create!(title: title,
  #                content: content,
  #                limit_time: limit_time,
  #                status: status,
  #                priority_color: priority_color,
  #                )
  # end
  #
  # 10.times do |n|
  #   title = Faker::App.author
  #   content = Faker::Pokemon.name
  #   limit_time = Faker::Date.between(2.days.ago, Date.today)
  #   status = Faker::Number.between(1, 3)
  #   priority_color = Faker::Color.color_name
  #
  #   Task.create!(title: title,
  #                content: content,
  #                limit_time: limit_time,
  #                status: status,
  #                priority_color: priority_color,
  #                )
  # end
  #
  # 10.times do |n|
  #   title = Faker::Dessert.variety
  #   content = Faker::Pokemon.name
  #   limit_time = Faker::Date.between(2.days.ago, Date.today)
  #   status = Faker::Number.between(1, 3)
  #   priority_color = Faker::Color.color_name
  #
  #   Task.create!(title: title,
  #                content: content,
  #                limit_time: limit_time,
  #                status: status,
  #                priority_color: priority_color,
  #                )
  # end
  #
  # 10.times do |n|
  #   title = Faker::Dessert.topping
  #   content = Faker::Pokemon.name
  #   limit_time = Faker::Date.between(2.days.ago, Date.today)
  #   status = Faker::Number.between(1, 3)
  #   priority_color = Faker::Color.color_name
  #
  #   Task.create!(title: title,
  #                content: content,
  #                limit_time: limit_time,
  #                status: status,
  #                priority_color: priority_color,
  #                )
  # end
