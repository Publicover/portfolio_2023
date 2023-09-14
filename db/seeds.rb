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

App.create(
  name: 'Beer Math', 
  img_url: 'beer_math.jpeg', 
  description: 'This was going to be for a local brewery featuring calorie and ABV information for their beers compared to others.', 
  short_description: 'No, not that one. This took local prices and allowed users to calculate how to find the best ABV per dollar or calorie', 
  time_period: 'Spring 2016', 
  additional_notes: 'If you were curious, Miller High Life had the highest ABV per calorie.', 
  biggest_challenge: 'When to trigger the math part of Beer Math. No one really loves callbacks, but they are absolutely necessary sometimes.'
)

App.create(
  name: 'MFA Event Registration', 
  img_url: 'mla.png', 
  description: nil, 
  short_description: 'A simple CRUD event registration app that had to interface directly with MS Access 2009', 
  time_period: nil, 
  additional_notes: nil, 
  biggest_challenge: nil
)

App.create(
  name: 'Caseflow', 
  img_url: 'caseflow.png', 
  description: nil, 
  short_description: 'This was a short project using the arcane coding UI Caseflow for legal case library management', 
  time_period: nil, 
  additional_notes: nil, 
  biggest_challenge: nil
)

App.create(
  name: 'Kruted', 
  img_url: 'kruted.svg', 
  description: nil, 
  short_description: 'This app was like LinkedIn for high school student atheletes to connect with college recruiters', 
  time_period: nil, 
  additional_notes: nil, 
  biggest_challenge: nil
)

App.create(
  name: 'Empathy Lab', 
  img_url: 'science.jpeg', 
  description: nil, 
  short_description: 'This is a much smaller version of Presentation Style Indicator that allows admins to create and record client research surveys', 
  time_period: nil, 
  additional_notes: nil, 
  biggest_challenge: nil
)

App.create(
  name: 'Samuel Johnson API', 
  img_url: 'sammy_j.jpeg', 
  description: nil, 
  short_description: 'This API faithfully recreates the extremely funny Samuel Johnson Dictionary from 1775', 
  time_period: nil, 
  additional_notes: nil, 
  biggest_challenge: nil
)

App.create(
  name: 'Dash Billing', 
  img_url: 'billing.jpeg', 
  description: nil, 
  short_description: 'This is a previous version of Ledgr that generates and tracks agency invoicing', 
  time_period: nil, 
  additional_notes: nil, 
  biggest_challenge: nil
)

App.create(
  name: 'Super Dictionary', 
  img_url: 'super_dictionary.webp', 
  description: nil, 
  short_description: "This app allows users to return dictionary results from Webster's, Oxford, Urban Dictionary and the Samuel Johnson API", 
  time_period: nil, 
  additional_notes: nil, 
  biggest_challenge: nil
)

App.create(
  name: 'Dash Incubator', 
  img_url: 'incubator.webp', 
  description: nil, 
  short_description: 'This was created to host and report on startup incubator curricula', 
  time_period: nil, 
  additional_notes: nil, 
  biggest_challenge: nil
)

App.create(
  name: 'eLicensee', 
  img_url: 'elicensee.png', 
  description: nil, 
  short_description: 'This handles licensing for state liquor stores in North Carolina', 
  time_period: nil, 
  additional_notes: nil, 
  biggest_challenge: nil
)

App.create(
  name: 'TAG', 
  img_url: 'dalcom.webp', 
  description: nil, 
  short_description: 'The counterpart to eLicensee, this is a liquor store inventory tracking and automation app', 
  time_period: nil, 
  additional_notes: nil, 
  biggest_challenge: nil
)

App.create(
  name: 'ecoFlow', 
  img_url: 'ecoflow.png', 
  description: nil, 
  short_description: 'This app powers a commercial hazardous waste disposal company', 
  time_period: nil, 
  additional_notes: nil, 
  biggest_challenge: nil
)

App.create(
  name: 'eLicensee Rewrite', 
  img_url: 'elicensee.png', 
  description: nil, 
  short_description: 'Rewrite eLicensee to bring it from Rails 2.1 to 6.1', 
  time_period: nil, 
  additional_notes: nil, 
  biggest_challenge: nil
)

App.create(
  name: 'ASOF', 
  img_url: 'asof.jpeg', 
  description: nil, 
  short_description: 'This app handle education grant registration along with relevant demographic and tax reporting', 
  time_period: nil, 
  additional_notes: nil, 
  biggest_challenge: nil
)

App.create(
  name: 'Tankr API', 
  img_url: 'tankr.jpeg', 
  description: nil, 
  short_description: 'The API powering Tankr.us, a petrol home delivery service that fills your car up in your driveway', 
  time_period: nil, 
  additional_notes: nil, 
  biggest_challenge: nil
)

App.create(
  name: 'Bad Pitch Generator', 
  img_url: 'bad_pitch.png', 
  description: nil, 
  short_description: 'This generates a satirical startup elevator pitch', 
  time_period: nil, 
  additional_notes: nil, 
  biggest_challenge: nil
)

App.create(
  name: 'Plowr API', 
  img_url: 'plower.jpeg', 
  description: nil, 
  short_description: 'An API that handles snow plow service subscriptions and solves the Travelling Salesman problem on the fly for drivers', 
  time_period: nil, 
  additional_notes: nil, 
  biggest_challenge: nil
)

App.create(
  name: 'German Holiday Checker', 
  img_url: 'holiday.jpeg', 
  description: nil, 
  short_description: 'Styled as a 90s internet joke page, it answers the question "Is it a German holiday today?"', 
  time_period: nil, 
  additional_notes: nil, 
  biggest_challenge: nil
)

App.create(
  name: 'Breathing Clean', 
  img_url: 'smoke.png', 
  description: nil, 
  short_description: 'An incremental browser game that gives smokers something to do during the first 72 hours of cessation', 
  time_period: nil, 
  additional_notes: nil, 
  biggest_challenge: nil
)

App.create(
  name: 'Pub Chalk', 
  img_url: 'pubchalk.jpeg', 
  description: nil, 
  short_description: 'Donated to the Columbus Covid Dart League so they could keep score in real time', 
  time_period: nil, 
  additional_notes: nil, 
  biggest_challenge: nil
)

App.create(
  name: 'Presentation Style Indicator', 
  img_url: 'ssi.png', 
  description: nil, 
  short_description: 'Create a Meyers Briggs–style test and generate individual cohort reports while visusaling total statistical trends', 
  time_period: nil, 
  additional_notes: nil, 
  biggest_challenge: nil
)

App.create(
  name: 'Grocery Listr', 
  img_url: 'grocery.png', 
  description: nil, 
  short_description: 'Record recipes and pick meals to generate a grocery list updated in real time', 
  time_period: nil, 
  additional_notes: nil, 
  biggest_challenge: nil
)

App.create(
  name: 'Ledgr', 
  img_url: 'ledgr.webp', 
  description: nil, 
  short_description: "This internal app handles all an agency's workflow and invoicing, from proposal creation to tax reporting", 
  time_period: nil, 
  additional_notes: nil, 
  biggest_challenge: nil
)
