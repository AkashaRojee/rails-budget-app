# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user = User.create! :name => 'John Doe', :email => 'john@mail.com', :password => 'topsecret', :password_confirmation => 'topsecret'

5.times do |i|
  category = Category.create!(name: "Category ##{i}", icon: "https://cdn-icons-png.flaticon.com/512/2965/2965278.png", user_id: user.id)

  5.times do |j|
    purchase = Purchase.create!(name: "C##{i}P##{j}", amount: "#{i+j}", user_id: user.id)
    # category.purchases.push(purchase)
    purchase.categories.push(category)
  end
end
