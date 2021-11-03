Plugin.define do
name "GeekLog"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.2"
description "Geeklog is an open source application for managing dynamic web content. It is written in PHP and supports MySQL, PostgreSQL, or MS SQL as the database backend."
website "http://www.geeklog.net/"
dorks [
'"powered by GeekLog"'
]
matches [
    {:text=>'<!--If you want the splash, uncomment the last line. If you want no splash, make sure it is commented out.-->'},
    {:text=>'Powered By <a class="footer" href="http://www.geeklog.net/">GeekLog</a>'},
    {:text=>'Powered By <a href="http://www.geeklog.net/">Geeklog</a>'},
    {:text=>'Powered By <a href="http://www.geeklog.net/'},
    {:version=>/Powered by <a href="http:\/\/www.geeklog.net\/">Geeklog ([\d\.a-z]{1,10})<\/a>/}
]
end
