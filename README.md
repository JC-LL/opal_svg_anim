# Animating SVG using Opal Ruby

## What is it ?
Some simple **scripts** (don't expect real application here) to test the capabilities of Opal Ruby to animate SVG in your browser. Application code is written in Ruby and transpiled to javascript using opal.

## How to reproduce ?

Of course you need Opal. I installed it on my Linux machine using RVM.

``
rvm install Opal
``

Concerning the application, there are some dependencies to respect. All are normally inclosed in Gemfile. Simply run this in each test directory :

``
bundle install
``

Then :

``bundle exec opal --compile -q opal-browser test.rb > app.js
``

Open index.html in your browser.

## Tests specificities

* **Test 1** : basic usage of Opal. Animation of an SVG directly embedded in html. Checks if it works. : a randomly colored dot normally moves around a circle.

* **Test 2** : we now try to open an external SVG file.
