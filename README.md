Bookmarkmanager2

>> for practice purposes

Structuring Sinatra App: (no namespace module)
  - ran bundle init to create my Gemfile - added gems
  - ran bundle install to generate Gemfile.lock
  - created a config.ru and a Rakefile to run RuboCop and Rspec
  - added DataMapper and dm-postgress-adapter gems to talk to database (postgres)
  - created models for database tables under lib folder
  - created tables using psql
  - created server.rb and required database models under lib
  - added rspec to gems and ran rspec --init
  - included ENV test environment to spec_helper and required server.rb
  - ran dummy test
  - added database_cleaner gem and required it on spec_helper
  - created public folder with a css stylesheet
  - created views folder with index and layout erb files
  - created route to index.erb
  - initial sinatra env working - rspec and rackup running.
