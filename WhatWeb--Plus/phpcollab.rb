Plugin.define do
name "phpCollab"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "phpCollab is an open source internet-enabled system for use in projects that require collaboration over the internet."
website "http://www.php-collab.org/"
dorks [
'"PhpCollab" inurl:/general/login.php'
]
matches [
{ :version=>/^<!-- Powered by PhpCollab v([\d\.]+) \/\/-->$/ },
{ :version=>/^<p id="footer">PhpCollab v([\d\.]+)[\s]*<\/p>$/ },
]
end
