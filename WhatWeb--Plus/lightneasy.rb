Plugin.define do
name "LightNEasy"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "LightNEasy is a simple and light Content Management System and Website Builder"
website "http://www.lightneasy.org/"
dorks [
'inurl:"LightNEasy.php?page="',
'"Powered by LightNEasy Content Manager"',
'"If you are seeing this, that means LightNEasy installation worked!"'
]
matches [
{ :version=>/<meta name='generator' content='LightNEasy( Mini)? ([^'^>]+)' \/>/, :offset=>1 },
{ :version=>/<!-- \+\+\+\+\+\+\+\+\+\+\+\+\+\+\+\+\+\+\+\+\+\+\+\+\+\+\+\+\+\+\+\+\+\+\+\+\+\+\+\+\+\+\+\+\+\+\+\+\+[\s]+\| LightNEasy ([^\s]+) Content Management System[\s]+\| / },
{ :version=>/<!-- \+\+\+\+\+\+\+\+\+\+\+\+\+\+\+\+\+\+\+\+\+\+\+\+\+\+\+\+\+\+\+\+\+\+\+\+\+\+\+\+\+\+\+\+\+\+\+\+\+[\s]+\| LightNEasy Content Management System[\s]+\| Copyright 2007-20[\d]{2} Fernando Baptista[\s]+\| http:\/\/(www\.)?lightneasy\.org[\s]+\+\+\+\+\+\+\+\+\+\+\+\+\+\+\+\+\+\+\+\+\+\+\+\+\+\+\+\+\+\+\+\+\+\+\+\+\+\+\+\+\+\+\+\+\+\+\+\+\+\+\+\+\+\+[\s]+\| [^\|]+ version ([^\s]+)/, :offset=>1 },
{ :string=>/<!-- \+\+\+\+\+\+\+\+\+\+\+\+\+\+\+\+\+\+\+\+\+\+\+\+\+\+\+\+\+\+\+\+\+\+\+\+\+\+\+\+\+\+\+\+\+\+\+\+\+[\s]+\| LightNEasy [^\s^\|]* Content Management System[\s]+\| ([^\|]+) version[\s]+/ },
{ :string=>/<!-- \+\+\+\+\+\+\+\+\+\+\+\+\+\+\+\+\+\+\+\+\+\+\+\+\+\+\+\+\+\+\+\+\+\+\+\+\+\+\+\+\+\+\+\+\+\+\+\+\+[\s]+\| LightNEasy [^\s^\|]* Content Management System[\s]+\| Copyright 2007-20[\d]{2} Fernando Baptista[\s]+\| http:\/\/(www\.)?lightneasy\.org[\s]+\+\+\+\+\+\+\+\+\+\+\+\+\+\+\+\+\+\+\+\+\+\+\+\+\+\+\+\+\+\+\+\+\+\+\+\+\+\+\+\+\+\+\+\+\+\+\+\+\+\+\+\+\+\+[\s]+\| ([^\|]+) version [^\s]+/, :offset=>1 },
{ :text=>"<link rel='stylesheet' type='text/css' href='css/lightneasy.css' />" },
{ :version=>/Powered by <a href="http:\/\/lightneasy\.org">LightNEasy ([^<]+)<\/a>/ },
{ :version=>/<h1>LightNEasy ([^<^\s]+) index page<\/h1><p>If you are seeing this, that means <strong>LightNEasy<\/strong> installation worked!<\/p>/ },
{ :version=>/<h2 class="LNE_title">LightNEasy ([^<^\s]+) index page<\/h2><p>If you are seeing this, that means <strong>LightNEasy<\/strong> installation worked!<\/p>/ },
]
end
