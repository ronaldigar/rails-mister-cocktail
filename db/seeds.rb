# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Ingredient.destroy_all if Rails.env.development?

fruits = []

30.times do
  fruits << Faker::Food.fruits

end

fruits = fruits.uniq

puts "Deleted old ingredients"

fruits.each do |f|
  Ingredient.create!(name: f)
end

puts "Created #{Ingredient.count} articles"
