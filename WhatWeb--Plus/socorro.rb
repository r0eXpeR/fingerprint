Plugin.define do
name "Socorro"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "A server for collecting, processing, and displaying crash reports from clients using the Breakpad libraries"
website "code.google.com/p/socorro/"
dorks [
'"Powered by Socorro"'
]
matches [
{ :text=>'Powered by <a href="http://code.google.com/p/socorro/">Socorro</a>' },
]
end
