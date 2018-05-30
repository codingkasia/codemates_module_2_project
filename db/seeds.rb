# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

users = User.create([{cohort_id: 1, name: "bob", gender: "female"}, 
                     {cohort_id: 2, name: "susan", gender: "male"}, 
                     {cohort_id: 3, name: "kasia", gender: "female"}, 
                     {cohort_id: 3, name: "lucas", gender: "male"}])
locations = Location.create([{city: "DC"}, {city: "NYC"}, {city: "Austin"}])
cohorts = Cohort.create([{location_id: 1, start_date: "january"}, {location_id: 2, start_date: "february"}, {location_id:3, start_date: "april"}])
comments = Comment.create([{cohort_id: 1, user_id: 1, content: "I just started a bootcamp in DC!"}, {cohort_id: 2, user_id: 2, content: "I am susan from alabama"}])

