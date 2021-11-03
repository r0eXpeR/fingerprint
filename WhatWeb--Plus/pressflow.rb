Plugin.define do
name "Pressflow"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "Pressflow is a distribution of Drupal with integrated performance, scalability, availability, and testing enhancements."
website "http://pressflow.org/"
dorks [
'"powered by Pressflow" "an open source content management system"'
]
matches [
{ :regexp=>/<a href="http:\/\/drupal.org"><img src="[\/a-zA-Z0-9\-\_+]*\/misc\/powered-blue-80x15.png" alt="Powered by Pressflow, an open source content management system" title="Powered by Pressflow, an open source content management system" width="80" height="15" \/><\/a>/ },
{ :text=>'<title>Drupal already installed | Pressflow</title>', :version=>"Install Page" },
]
end
