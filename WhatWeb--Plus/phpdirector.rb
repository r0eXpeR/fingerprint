Plugin.define do
name "PHPDirector"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.2"
description "PHPDirector is a content management system that allows users to create there own video sharing websites."
website "http://www.phpdirector.co.uk/"
dorks [
'"powered by PHP Director"'
]
matches [
{ :version=>/<a href="http:\/\/www.phpdirector.co.uk\/">Powered by PHP Director ([\d\.]+)<\/a>/ },
]
end
