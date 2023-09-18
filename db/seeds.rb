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
  name: 'MLA Event Registration', 
  img_url: 'mla.png', 
  description: "Before I went to code school but after I had been let go from yet another editing job because it lost major clients, my wife and I started a boutique advertising agency. The frustration of putting together multiple Wordpress sites that made me pay for plugins that could actually communicate with a database is actually what drove me to code school.\n\nSo this was my first major freelance project out of code school, and I maintained this for the next five years. It was a pretty straightforward CRUD app. Members of the Marine Leadership Alliance would access the URL and enter their reservation information.\n\nThe admin for this registration had a very specific workflow and was not interested in modifying anything, so the process mimicked the way she did it on paper when it first started. Emails were sent out to four admins each time a user completed registration. The main admin got a CSV attachment that she would import into MS Access 2005. I built an admin panel that required a login, and she would use this to track which CSVs she might not have gotten via email.", 
  short_description: 'A simple CRUD event registration app that had to interface directly with MS Access 2009', 
  time_period: nil, 
  additional_notes: nil, 
  biggest_challenge: "This is where I learned that my writing and editing background really helped with client relations. The client didn't really understand what computers were capable of, so I was able to walk her through unfamiliar operations like CSV import and switching tabs on an admin panel.", 
  tag_list: 'Rails 5, postgresql, HTML, CSS, mailgun, DMARC'
)

App.create(
  name: 'Caseflow', 
  img_url: 'caseflow.png', 
  description: "Caseflow was a program designed to identify which files and documents might need to go to which lawyers and paralegals to prepare for a trial. It worked on top of MS Access. My short stint with them saw me setting up various templates depending on which legal issue was being discussed. The biggest problem was that Caseflow had its own proprietary IDE that worked as a coding interface, so users had to click a virtual keyboard with a mouse. Also, there were no array-like data types. Also also, the software could only handle 50 variables for the entire case library, i.e., you could not save, say, a list of case documents needed.", 
  short_description: 'This was a short project using the arcane coding UI Caseflow for legal case library management', 
  time_period: nil, 
  additional_notes: nil, 
  biggest_challenge: "I've never gone to a restaurant and asked if the hamburger came with a bun. Similarly, I did not ask if I would have to code without using a keyboard.", 
  tag_list: 'Casflow'
)

App.create(
  name: 'Kruted', 
  img_url: 'kruted.svg', 
  description: "Kruted was a Durham startup that wanted to make something like LinkedIn that connected high school athletes with college recruiters. The app had a pretty JavaScript-heavy front end, and the codebase itself was pretty disorganized.\n\nMy first task was to make sure we didn't mess anything up as the CTO and lead designer kept changing their minds, so I created many system tests with RSpec and capybara. I then went through the site for WCAG compliance. The database also had several problems, so I was able to re-architecture the models' relationships. I was responsible for a few features—I’m probably proudest of making a user flow for parents who could sign in to see who and how their children were communicating with adults on the platform.", 
  short_description: 'This app was like LinkedIn for high school student atheletes to connect with college recruiters', 
  time_period: nil, 
  additional_notes: nil, 
  biggest_challenge: "Honestly, I found this team hard to communicate with. The three main stakeholders only talked about how much money they could make with the product instead of what the product could do for its users. It also wasnt very friendly to work-life balance.", 
  tag_list: "Rails 5, RSpec, capybara, WCAG"
)

App.create(
  name: 'Empathy Lab', 
  img_url: 'science.jpeg', 
  description: "A large part of my wife's work used to be user research. She didn't have a good way to record her data in a way that she liked, so we put together a plan for the Empathy Lab. It was basically a smaller version of Presentation Style Indicator in that it hosted the surveys themselves but did not have the flexibility to create new testing rubrics on the fly.\n\nAdmins log in to record organizations and the members of those organizations. Admins then create any and all open-ended surveys. Organization members can take the surveys and their answers are recorded. The back end digs in for some simple textual analysis, looking for keyword saturation identified by the admin. Results are served to the admin through the admin panel, and reports can be generated that compare the performance of one cohort to another. Results and reports can also be divided by demographic information.", 
  short_description: 'This is a much smaller version of Presentation Style Indicator that allows admins to create and record client research surveys', 
  time_period: nil, 
  additional_notes: nil, 
  biggest_challenge: "I'd never done keyword analysis before this. I was lucky my wife was able to walk me through her process because there's a lot of marketing math I just don't know about. ",
  tag_list: "Rails 5, Stripe API, postgresql, mailgun, DMARC"
)

App.create(
  name: 'Samuel Johnson API', 
  img_url: 'sammy_j.jpeg', 
  description: "This dictionary from 1775 is truly hilarious. In order to include it in the Super Dictionary, I built a web scraper to collect dictionary entries found online. It used the nokogiri and mechanize gems. It traversed the online version of the dictionary that did not have an API and traversed entries by URL. These entries were dumped into a postgresql database and served via JSON.", 
  short_description: 'This API faithfully recreates the extremely funny Samuel Johnson Dictionary from 1775', 
  time_period: nil, 
  additional_notes: nil, 
  biggest_challenge: "Formatting large chunks of text into something suitable for a database was tricky, but I dove deep into regex to make it work.",
  tag_list: "Rails 5, nokogiri, mechanize, postgresql, heroku"
)

App.create(
  name: 'Dash Billing', 
  img_url: 'billing.jpeg', 
  description: "dash creative worked with a lot of startups. We didn't want to pay for invoice management software, so I was able to put something together. It was a relatively straightforward CRUD app that let admins create a client list and enter invoicing information into one of several templates. A PDF was emailed to clients who were able to click another link to be taken to the app's Stripe payments page.", 
  short_description: 'This is a previous version of Ledgr that generates and tracks agency invoicing', 
  time_period: nil, 
  additional_notes: nil, 
  biggest_challenge: "This is when I discovered how many steps it takes to get DMARC up and running through heroku as well as how to style a PDF.",
  tag_list: "Rails 5, heroku, postgresql, mailgun, DMARC, grover, HTML, CSS"
)

App.create(
  name: 'Super Dictionary', 
  img_url: 'super_dictionary.webp', 
  description: "This was created to let users vote on which dictionary gives the best definition for their uses. My previous career as writer and editor left me with some pretty strong opinions about how dictionaries work in modern America. This was created to illustrate the argument for prescriptivism.\n\nUsers enter a word. Definitions are returned from Webster's, Oxford, Urban Dictionary and my own Samuel Johnson Dictionary API. Results are presented in such a way to show how definitions from Urban Dictionary and Webster's logically rhyme, as descriptivist texts. The prescriptivist texts did the same. Users voted on which definition best fit their needs.", 
  short_description: "This app allows users to return dictionary results from Webster's, Oxford, Urban Dictionary and the Samuel Johnson API", 
  time_period: nil, 
  additional_notes: nil, 
  biggest_challenge: "It was pretty straightforward, but formatting results from each dictionary results took a minute to untangle when I was hoping for something more standardized.", 
  tag_list: 'Rails 5, API, REST, JSON, XML, heroku, postrgresql'
)

App.create(
  name: 'Dash Incubator', 
  img_url: 'incubator.webp', 
  description: "This was created to handle course materials for one of the startup incubators in Greensboro, NC. Multiple admins would create their own course materials and curricula, upload it all into the system, then students would complete the assignments and upload the results. Additional reading materials were also stored in the app and available to everyone. The system ran background jobs to check if all students had turned in materials before the deadline, and it would alert students who had not yet done it through automated emails.", 
  short_description: 'This was created to host and report on startup incubator curricula', 
  time_period: nil, 
  additional_notes: nil, 
  biggest_challenge: "This was on such a tight timeline that I have always felt I could have done better with more time. These kinds of choices are regular in any kind of engineering, but this timeline was so tight I didn't feel like I had the option of exploring anything but the most quick and dirty ways to complete features.",
  tag_list: "Rails 6, ajax, S3, heroku, postrgresql, mailgun, DMARC"
)

App.create(
  name: 'eLicensee', 
  img_url: 'elicensee.png', 
  description: "This handled inventory and licensing for liquor stores regulated by North Carolina. Part of the project was to rewrite this Rails 2 app in Rails 6. The rest of the project was to handle tickets created by Dalcom's help desk. Since the app was so old, it broke all the time for reasons that weren't exactly clear. It also had to take readings from handheld inventory scanners, which had their own quirks to deal with. Everything had to go through Microsoft Navision. \n\nThe app generated labels, reordered stock that was low, resolved stock and reported to North Carolina regulatory agencies. It was a mult-tenant app so each of the 35 versions had small differences among them.", 
  short_description: 'This handles licensing for state liquor stores in North Carolina', 
  time_period: nil, 
  additional_notes: nil, 
  biggest_challenge: "Rewriting the app into the contemporary version of Rails was great fun, but the app was on its last legs. Predicting breaks on the running program was nearly impossible, and made harder by Dalcom's choice to not let me access server logs due to legal concerns, so I could not see explicitly which calls were breaking which parts.",
  tag_list: 'Rails 2, MS Navision, JSON, XML, REST, SOAP, MySQL'
)

App.create(
  name: 'ecoFlow', 
  img_url: 'ecoflow.png', 
  description: "This was the app for a hazardous materials disposal company. I came on when the owner wanted to update the legal classification of various materials due to changing laws. This was done mostly through API calls to an API owned by the state of North Carolina.", 
  short_description: 'This app powers a commercial hazardous waste disposal company', 
  time_period: nil, 
  additional_notes: nil, 
  biggest_challenge: "The API I had to reach out to was rather archaic and required multiple calls instead of batching. I had to lean on the documentation quite heavily for this one.",
  tag_list: 'Rails 4, NC API, JSON, REST, postrgresql'
)

App.create(
  name: 'ASOF', 
  img_url: 'asof.jpeg', 
  description: "The Alabama Scholarship Opportunity Fund connects low-income students with school tuition vouchers. It was built to digitize an intake process that was wholly on paper.\n\nThe app saw about 10k users log in to enter the selection process by filling in demographic information in a long series of forms and uploading tax information. For most of the year, there wasn't much need for users to log in because most everything else was handled by email. My part on this team was mostly styling and admin panels due to the large number of devs we had working on it. ", 
  short_description: 'This app handle education grant registration along with relevant demographic and tax reporting', 
  time_period: nil, 
  additional_notes: nil, 
  biggest_challenge: "Recreating complex forms and allowing admin users to filter and sort without losing any information from the params. The solutions to both of these are relatively straightforward.", 
  tag_list: 'Rails 6, CSS, HTML, Bootstrap 5'
)

App.create(
  name: 'Tankr API', 
  img_url: 'tankr.jpeg', 
  description: "This API was hooked into a React Native front end with the admin panel in plain Rails. The startup's mission is simple: Users sign up to get their car filled with gas. The drivers come fill the cars with gas.\n\nUser signup was pretty standard to implement. It had to include information about their car's make, model and license plate number as well as general location. The fleet had three trucks to respond to service orders. The API needed to break all the stops for the day into three geographic sections, then decide how many trucks are needed in each. Also, it takes 10 minutes to perform a service stop, so the app was designed to have four two-hour blocks of time (with an empty hour in the middle for drivers to eat lunch). The hardest part was figuring out what to do with incoming orders while the drivers were out in the field.\n\nLeaning heavily on the Open Source Routing Machine, driver routes were calculated on the fly. If there was time left in a timeslot, the stop was inserted into the route in real time. If there wasn't, the stop was moved to the next available time slot and the route was recalculated. Once a stop belonged to a timeslot, it was not moved, so finding time for a new stop never jeopardized the service stop of someone who was already expecting it in a specific range of time for that day.\n\nThe admin panel handled all route reporting (with a JavaScript-heavy historical record of serviced stops visualized in Google Maps) and invoicing through Stripe. There was a coupon system that handled both percentages and raw amounts. The math for all this was straightforward but grew in complexity as each stop was added to a timeslot.", 
  short_description: 'The API powering Tankr.us, a petrol home delivery service that fills your car up in your driveway', 
  time_period: nil, 
  additional_notes: nil, 
  biggest_challenge: "Timing and state change. We didn't want to bump someone from one time slot to the next, but we also didn't want to have the drivers chasing new service stops for the last half of their shift. We also also didn't want to hammer the Open Source Routing Machine whose EULA forbids excessive use but does not put the terms more concretely than that.", 
  tag_list: 'Rails 6, REST, GraphQL, JWT auth, Nomatim API, JSON, Open Source Routing Machine, Stripe API, webhooks, heroku, postgresql, Google Maps'
)

App.create(
  name: 'Bad Pitch Generator', 
  img_url: 'bad_pitch.png', 
  description: "Another result of the Publicover & Co. app jam, this simple site lets users click a button to receive a satirical elevator pitch for a startup. There's an admin panel for adjusting different nouns, verbs and modifiers. It was such a hit that it's presently being used as a promotional tool for Publicover & Co. You can check out the raw version at worse-pitch-generator.herokuapp.com.", 
  short_description: 'This generates a satirical startup elevator pitch', 
  time_period: nil, 
  additional_notes: nil, 
  biggest_challenge: "We have extremely talented designers on our team, but their designs did not translate to easy CSS.", 
  tag_list: "Rails 6, ajax, JavaScript"
)

App.create(
  name: 'Plowr API', 
  img_url: 'plower.jpeg', 
  description: "I had just landed in Hamburg after leaving an agency job, and I was unsure if I was going to move to freelance or look for more agency work. Plower API is a portfolio piece for either choice. It simulates a snowplow business in Ashtabula, OH, my hometown, a place used to seeing heavy snow.\n\nThis Rails and GraphQL API uses JWT for authorization. There's no front end. Users are admins, drivers or customers. Admins set a service menu with prices. There's an admin panel where they approve service to customers and set up billing. Users sign up for the services they want and are given the option to be an Early Bird customer, which guarantees their driveway will be plowed before 7:30, the time most people leave for work.\n\nEach day at 3:00 AM and 5:00 AM, the system reaches out to a local weather service API. If there is a significant amount of snow that has fallen by that time, the route calculation services are kicked off. These can also be activated by a seeing a specific rate of snowfall that means driveways will need to be plowed by 7:00 AM even if the threshold from the first criterion is not met. To determine what route a driver should take, the system reaches out to the Open Source Routing Machine twice: once to calculate the shortest route for the Early Bird customers, then again to create the route for the remaining customers. Drivers plow all the snow, and, when the routes for the day are marked as complete, the user receives an email requesting payment through the system via the Stripe API.", 
  short_description: 'An API that handles snow plow service subscriptions and solves the Travelling Salesman problem on the fly for drivers', 
  time_period: nil, 
  additional_notes: nil, 
  biggest_challenge: "Just like with Tankr, state management of the order along with the routing concerns took more than a minute to untangle.", 
  tag_list: 'Rails 6, REST, GraphQL, JWT auth, Nomatim API, Weatherbit API, JSON, Open Source Routing Machine, Stripe API, webhooks, heroku, postgresql'
)

App.create(
  name: 'German Holiday Checker', 
  img_url: 'holiday.jpeg', 
  description: 'Germany can be a confusing place when you first move here. There are literally twice as many public holidays as I, as an American, am used to. This was our first Publicover & Co. app jam result, and it has more to do with styling than anything else. Remember those joke sites in the early 2000s that were all over the place? Like whatthe****shouldimakefordinner.com? You visit, hit a button, and something very blunt happens. Well, this is the same. We have a database of all the German holidays from now to five years in the future, and the site either says the name of the holiday on the root page or just “No” in large text, checking against Time.zone.today. Expat groups on Facebook thought this was hilarious, which was basically all that we were trying to do.', 
  short_description: 'Styled as a 90s internet joke page, it answers the question "Is it a German holiday today?"', 
  time_period: nil, 
  additional_notes: nil, 
  biggest_challenge: "I built this in real time on zoom in front of people who never opened their computer's terminal. It took like two hours and was not challenging in the least.", 
  tag_list: 'Rails 6, postgresql, heroku'
)

App.create(
  name: 'Breathing Clean', 
  img_url: 'smoke.png', 
  description: "The result of one of the Publicover & Co. app jams, this is a JavaScript incremental browser game that helps smokers focus on not smoking. It simulates the first 72 hours of tobacco cessation.  It works like any other incremental game, except there is a time limit per click. This is represented by a constantly refreshing progress bar at the bottom of the screen. Users must click once per second to gain 1 willpower, the main resource. If the button is not clicked, the user will lose 1 willpower. If the balance goes negative, the game still continues but users must now click twice per second. Users can spend willpower on upgrades that do things such as increase the time interval to earn willpower, earning multiple willpowers per click and clicking multipliers.", 
  short_description: 'An incremental browser game that gives smokers something to do during the first 72 hours of cessation', 
  time_period: nil, 
  additional_notes: nil, 
  biggest_challenge: "The end game. I have several iterations of how this system works with large numbers, but I need to introduce more mechanics after certain thresholds (much like Universal Paperclips, one of the originals of the genre) if the game is going to have any staying power past tobacco cessation.", 
  tag_list: "JavaScript, HTML, CSS, heroku"
)

App.create(
  name: 'Pub Chalk', 
  img_url: 'pubchalk.jpeg', 
  description: "Covid hit everyone pretty hard in a lot of different ways, only some of which were expected. My brother's dart league in Columbus, OH wanted to keep playing while being following shelter-in-place edicts. Free software designed for this was in its infancy and lacked real-time scorekeeping that people outside of the game could watch.\n\nThis is basically what stimulus was invented to do. Users are either admins, team captains or players. Teams are entered as are intervals of play (like a league game every three days or one week, for instance) and the system designs a bracket. On game night, users log in to their own game but can see scoreboards for other games as they happen. Only captains can record scores. After the season is over, the system calculates the team rankings and saves that into a historical record.", 
  short_description: 'Donated to the Columbus Covid Dart League so they could keep score in real time', 
  time_period: nil, 
  additional_notes: nil, 
  biggest_challenge: "This was one of the larger dart leagues my brother has belonged to, with a lot of folks who have played locally for a very long time. They wanted live video feeds of each game, but they did't want to pay for any sort of pre-designed system or for hosting (the resources needed for multiple simultaneous video streams couldn't fit on heroku's free tier when that existed). It sufficed for about a year before the league decided to use one of the newer, much larger and scaled competitors with reasonable subscription fees.",
  tag_list: 'Rails 6, hotwire, stimulus, postgresql, heroku, S3, Bootstrap 5'
)

App.create(
  name: 'Presentation Style Indicator', 
  img_url: 'ssi.png', 
  description: nil, 
  short_description: 'Create a Meyers Briggs–style test and generate individual cohort reports while visusaling total statistical trends', 
  time_period: nil, 
  additional_notes: nil, 
  biggest_challenge: 'Since the order of the answers of each test are presented in random order, it was a little more slippery holding onto the multiple answers the user had already given if they wanted to hit the back button two dozen times.', 
  tag_list: 'Rails 6, stimulus, postgresql, heroku, S3, Bootstrap 5, mailgun, DMARC'
)

App.create(
  name: 'Grocery Listr', 
  img_url: 'grocery.png', 
  description: nil, 
  short_description: 'Record recipes and pick meals to generate a grocery list updated in real time', 
  time_period: nil, 
  additional_notes: nil, 
  biggest_challenge: "There's no (free) external API that gives calorie counts to the degree of accuracy the app needs to do the math properly. Google, for instance, returns that green bell peppers have 0 calories per gram as the first result. That’s just clearly not true. If a recipe calls for 74 grams of bell pepper, that’s 15 calories added to the total. So the system does math with 0.185/gram, which means that it's up to users to enter that kind of information in the first place. Which means it has to then be associated with the recipe values. The math was straightforward, but i do not like pushing so much detailed work onto the user.", 
  tag_list: "Rails 7, stimulus, hotwire, minitest, postgresql, heroku, S3, Bootstrap 5"
)

App.create(
  name: 'Ledgr', 
  img_url: 'ledgr.webp', 
  description: "My wife and I cannot be the only American immigrants to Germany that found the process of paperwork, particularly the tax reporting, to be reasonably straightforward but astonishingly complex. Add to this the fact that the software needed to interface with DATEV lacked robust visualization options. Then there was the price creep of other software needed to manage a distributed team.\n\nSo I decided to create Ledgr on Rails 7.  Admin users start by filling in background information about clients and services, including multiple paragraphs that will appear on proposals that explain each service. A proposal is created by picking the service offerings from a chained dropdown list powered by stimulus. The associated prices and paragraphs are then translated into a web page (with downloadable PDF) the client can digitally sign. The admin then reviews the contract terms before creating it in a database. The contract is then emailed and the program runs a background job to create all invoices needed for the contract. Heroku scheduler alerts the admin through Slack or email when there are invoices to send out (since most of our clients pay on monthly installments).\n\nThe system then does a bunch of math and adds data to the visulization dashboard. It keeps track of who owes how much money, expenses, expense type, yearly profit and the like. The system again uses heroku scheduler to generate monthly reports that are added to the visualization data.\n\nBecause some of our teammates are neurodivergent, I designed the accountant dashboard as a series of buttons that are enabled if there is an email to send out, a proposal to follow up on or something similar—the buttons are disabled if there is no immediate task at hand, reducing the mental load of using the program.", 
  short_description: "This internal app handles all an agency's workflow and invoicing, from proposal creation to tax reporting", 
  time_period: nil, 
  additional_notes: nil, 
  biggest_challenge: "I needed a way to allow clients to view proposals online without the protection of having them sign into the system. I decided to send a link through email that uses a secure token generated for each proposal combined with the SGID of the client's main email address. I then create or find a user based off that client email, sign them in and allow them to view and sign the contract. This allows anyone with the link to view the proposal but allows the system to benefit from the security of pundit, devise, and plain old obfuscation.",
  tag_list: "Rails 7, stimulus, hotwire, Stripe API, minitest, postgresql, heroku, S3, Bootstrap 5, mailgun, DMARC"
)

