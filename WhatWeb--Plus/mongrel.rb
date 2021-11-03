Plugin.define do
name "Mongrel"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "Mongrel is an open-source HTTP library and web server written in Ruby."
website "http://rubyforge.org/projects/mongrel/"
matches [
    {:search=>"headers[server]", :version=>/^Mongrel ([\d][^\s]+)/},
    {:search=>'headers[server]', :regexp=>/Mongrel/}
]
end
