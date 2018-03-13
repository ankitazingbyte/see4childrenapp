# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
 password = 'pass123'
# 1.upto(5) do |i|
#   User.create(
#     email: "user-#{i}@example.com",
#     password: password,
#     password_confirmation: password
#   )
# end
# AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password') if Rails.env.development?

# role1 = Role.create(name: 'admin')
# role2 = Role.create(name: 'donor')
# role3 = Role.create(name: 'ngo')
user1 = User.create(email: "admin@example.com", password: password,  password_confirmation: password )
user1.add_role :admin
user2 = User.create(email: "ngo@example.com", password: password, password_confirmation: password )
user2.add_role :ngo
# user3 = User.create(email: "donor@example.com",  password: password, password_confirmation: password )
# user3.add_role :donor
