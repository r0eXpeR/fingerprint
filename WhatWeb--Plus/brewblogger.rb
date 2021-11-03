Plugin.define do
name "BrewBlogger"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "BrewBlogger is a easy to set up, easy to use, browser-based homebrew logging and calculation suite. It is a PHP/MySQL-based system that provides today's brewer not only a fast and easy way to record their brewing activities, recipes, and awards, but also forum to share their zymurgistic efforts and expertise with the homebrewing community around the world."
website "http://www.brewblogger.net/"
dorks [
'("BrewBlogger 2.3.2 Club Edition developed by zkdigital.com"|"BrewBlogger 2.3.2 Personal Edition developed by zkdigital.com")'
]
matches [
    {:string=>/<div id="footer">Content &copy; 2011 [^\n]+ &mdash; BrewBlogger ([^\s]+) (Personal Edition|Club Edition) developed by <a href="http:\/\/www\.zkdigital\.com" target="_blank">zkdigital\.com<\/a>/, :offset=>1 },
    {:text=>'developed by <a href="http://www.zkdigital.com'},
    {:version=>/<div id="footer">Content &copy; 2011 [^\n]+ &mdash; BrewBlogger ([^\s]+) (Personal Edition|Club Edition) developed by <a href="http:\/\/www\.zkdigital\.com" target="_blank">zkdigital\.com<\/a>/}
]
end
