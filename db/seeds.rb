# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all

User.create!([{
  email: "sampleofficer@gmail.com",
  password: "Dummyofficer123!",
  sign_in_count: 0,
  name: "sample_officer",
  is_officer: 1,
  sem_hours: 24,
  total_hours: 30,
  status: "active",
  level: "gold",
  description: "The first dummy officer account"
},])

p "Created #{User.count} users"