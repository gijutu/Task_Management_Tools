# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


50.times do |n|
  title = Faker::Pokemon.name
  content = Faker::Pokemon.name
  limit_time = Faker::Date.between(2.days.ago, Date.today)
  status = Faker::Number.between(1, 3)
  priority_color = Faker::Color.color_name

  Task.create!(title: title,
               content: content,
               limit_time: limit_time,
               status: status,
               priority_color: priority_color,
               )
end
