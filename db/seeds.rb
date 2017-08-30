# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

admin = User.create(email: 'user1@example.com', password: 'password')
trainer = User.create(email: 'user2@example.com', password: 'password')
user = User.create(email: 'user3@example.com', password: 'password')
