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