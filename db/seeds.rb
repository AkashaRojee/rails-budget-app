# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user = User.create! :name => 'John Doe', :email => 'john@mail.com', :password => 'topsecret', :password_confirmation => 'topsecret'

5.times do |i|
  Category.create!(name: "Category ##{i}", user_id: user.id)
end
