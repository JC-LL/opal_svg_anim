#bundle exec opal --compile -q opal-browser -q opal-jquery test.rb > app.js
#==============================================
require 'opal'
puts "testing external svg animation"

#================ basic browser interaction =========
require 'opal-browser'
require "browser/setup/large"
p $window.class
p $window.navigator.name             # "netscape" !
p $window.navigator.operating_system # "Linux x86_64"
p $window.location

#================ DOM navigation =============
p $window.document.body        # works
p $window.document.body.elements # works
p $document
p $document["obj"]
p svg_filename=$document["obj"]["data"] # "fsm.svg"

require "nokogiri"
p svg = Nokogiri::HTML::DocumentFragment.parse(svg_filename)
