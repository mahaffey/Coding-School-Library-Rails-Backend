# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Topic.create([{name: "Software Engineering"},{name: "Web Development"},{name: "Databases"}])


Subtopic.create([{name: "Ruby on Rails", topic_id: 3 },{name: "Ruby", topic_id: 2 },{name: "Javascript", topic_id: 3 },{name: "Python", topic_id: 2 },{name: "SQL", topic_id: 4 },{name: "MongoDB", topic_id: 4 }])

Content.create([{title: "SQL and You", subtopic_id: 5, difficulty: "novice"},{title: "Django", subtopic_id: 4, difficulty: "hard"}])
