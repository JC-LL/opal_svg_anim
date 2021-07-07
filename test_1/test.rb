#bundle exec opal --compile -q opal-browser -q opal-jquery test.rb > app.js
#==============================================
require 'opal'
# prints ok on the browser console
puts "hello world #{(1..5).map{|i| i*2}}".center(30,'=')

#================ basic browser interaction =========
require 'opal-browser'
require "browser/setup/large"
p $window.class
p $window.navigator.name             # "netscape" !
p $window.navigator.operating_system # "Linux x86_64"
p $window.location

#================ DOM navigation =============

# p doc=$window.document.class # works
p $window.document.body        # works
p $window.document.body.elements # works
p $document

#============ for animation ============
COLORS=["blue","red","green"]
$document.ready do
  t=0
  every 0.1 do
    t=(t+3) % 360
    $document["circle"]["cx"]=200+50*Math.sin(t*Math::PI/180)
    $document["circle"]["cy"]=100+50*Math.cos(t*Math::PI/180)
    $document["circle"]["fill"]=COLORS.sample
  end
end
