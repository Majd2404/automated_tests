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

+ Install RSpec
group :development, :test do

  gem 'rspec', '3.9.0', platforms: [:mri, :mingw, :x64_mingw]
end

$ gem install rspec -v 3.9.0


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

