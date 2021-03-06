# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Person.create!(name:  "Example Person",
  email: "example@railstutorial.org",
  password:              "foobar",
  password_confirmation: "foobar",
  admin: true)

# For randomly choosing a colour
colour_a = ["Red", "Blue", "Grey", "", "", "Black", "Yellow"]

99.times do |n|
  name  = Faker::Name.name
  email = "example-#{n+1}@railstutorial.org"
  password = "password"
  height = rand(255)
  weight = rand(255)
  if height.between?(200, 255)
    height = ""
  end
  if weight.between?(200, 255)
    weight = ""
  end
  Person.create!(name:  name,
    email: email,
    password:              password,
    password_confirmation: password,
    height: height,
    weight: weight,
    colour: colour_a.sample)
end

Electronic.create!(
  name: "Example product",
  desc: "Example description",
  featured: true
)

99.times do |n|
  name = Faker::Commerce.product_name
  desc = Faker::Lorem.paragraphs
  if rand(10) < 2
    featured = true
  end
  Electronic.create!(
    name: name,
    desc: desc,
    featured: featured
  )
end
