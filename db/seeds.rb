# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

if Rails.env.development? 
  User.create(email: 'jim@jim.com', password: 'password', role: 'admin')
end

Skill.create(name: 'Ruby')
Skill.create(name: 'Ruby on Rails')
Skill.create(name: 'JavaScript')
Skill.create(name: 'JWT Auth')
Skill.create(name: 'API Architecture')
Skill.create(name: 'HTML')
Skill.create(name: 'CSS')
Skill.create(name: 'Ajax')
Skill.create(name: 'postgresql')
Skill.create(name: 'minitest')
Skill.create(name: 'RSpec')
Skill.create(name: 'Capybara')
Skill.create(name: 'rubocop')
Skill.create(name: 'Postman')
Skill.create(name: 'Mailgun')
Skill.create(name: 'heroku')
Skill.create(name: 'nokogiri')