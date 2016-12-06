# README

This is a web app built in Ruby on Rails intended to provide users with the means to plan out a desirable Gwent deck in The Witcher 3: Wild Hunt without having to track down all of the cards in-game.

If this project is continued and additional collaborators are picked up, this file will need additional documentation to help anyone not familiar with Ruby on Rails.

This project uses:

- Ruby on Rails (meaning both Ruby and Rails)
- CSS
- Sass
- HTML5
- SQLite for a while, but that has since been dropped for PostgreSQL
- Bootstrap

Here is how you start this whole thing up, once you have pulled from git.

` $ gem install rails
(Assuming that you have installed postgresql already, if you are doing this
in the c9.io IDE like I am, these instructions should work without any further
tweaking)
` $ sudo service postgresql start
` $ bundle
` $ rails db:setup
-or, if you have already set up the database and want to reset it-
` $ rails db:reset

If the database is, for any reason, not populated with cards, you can manually
apply the seed with
` $ rails db:seed

and any migrations that need to happen can be initiated with
` $ rails db:migrate

To start the server (again, this will need to be tweaked if not used on c9.io)
` $ rails s -b $IP -p $PORT
