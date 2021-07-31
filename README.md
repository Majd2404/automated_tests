1 Why Write Tests for your Rails Applications?
Rails makes it super easy to write your tests. It starts by producing skeleton test code while you are creating your models and controllers.

By running your Rails tests you can ensure your code adheres to the desired functionality even after some major code refactoring.

Rails tests can also simulate browser requests and thus you can test your application's response without having to test it through your browser.


+ Create rails app

$ rails new automated_tests

+  Create a remote repository on GitHub

git init

git add README.md

git commit -m "first commit"

git branch -M main

git remote add origin https://github.com/*******/automated_tests.git

git push -u origin main

+ Install RSpec (rspec-rails 5.x for Rails 6.x)

group :development, :test do

  gem 'rspec-rails', '5.0.0', platforms: [:mri, :mingw, :x64_mingw]

end

$ gem install rspec-rails -v 5.0.0

$ rails generate rspec:install

$ bundle exec rspec

If you like to use Haml:

+ Install Haml

gem 'haml', '5.2.0'

$ gem install haml -v 5.2.0

+ Converting all .erb views to haml format

$ rake haml:erb2haml

+ Create Word model

$ rails g model Word value language

$ rake db:migrate

+ First test for our new model Using shoulda-matchers:

https://github.com/thoughtbot/shoulda-matchers

$ gem 'shoulda-matchers', '5.0.0'

$ gem install shoulda-matchers


+ Rails apps
If you're working on a Rails app, simply place this at the bottom of spec/rails_helper.rb (or in a support file if you so choose):

Shoulda::Matchers.configure do |config|
  config.integrate do |with|
    with.test_framework :rspec
    with.library :rails
  end
end

+ https://github.com/thoughtbot/shoulda-matchers/blob/master/lib/shoulda/matchers/active_record/have_db_column_matcher.rb

/word_spec.rb

require 'rails_helper'

RSpec.describe Word, type: :model do
    describe 'columns' do
        it { is_expected.to have_db_column(:value) }
        it { is_expected.to have_db_column(:language) }
    end
end

$ rails db:migrate RAILS_ENV=test
$ bundle exec rspec

Output:

..

Finished in 0.72477 seconds (files took 3.5 seconds to load)
2 examples, 0 failures