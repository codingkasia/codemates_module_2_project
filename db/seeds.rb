# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# users = User.create([{name: "bob", email: "bob@yahoo.com", cohort_id: 1}, 
#                      {name: "susan", email: "susan@yahoo.com", cohort_id: 2}, 
#                      {name: "kasia", email: "kas@yahoo.com", cohort_id: 3}, 
#                      {name: "lucas", email: "lucas@yahoo.com", cohort_id: 3}])
locations = Location.create([{city: "Washington, DC"}, {city: "New York City, NY"}, {city: "Austin, TX"}])
cohorts = Cohort.create([{location_id: 1, semester: "winter"}, {location_id: 2, semester: "spring"}, {location_id:3, semester: "summer"}, {location_id:3, semester: "fall"}])
# comments = Comment.create([{cohort_id: 1, user_id: 1, content: "I just started a bootcamp in DC!"}, {cohort_id: 2, user_id: 2, content: "I am susan from alabama"}])

