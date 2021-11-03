Plugin.define do
name "PHP-Link-Directory"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.2"
description "phpLD is the most widely used directory script on the internet, installed on over 100,000 websites. phpLD is a great addition to any site, and is easy to install."
website "http://www.phplinkdirectory.com/"
dorks [
'"powered by phpLinkDirectory"'
]
matches [
{ :ghdb=>'"powered by phpLinkDirectory"', :certainty=>25 },
{ :regexp=>/<a href="http:\/\/www.phplinkdirectory.com[^>]*Phplinkdirectory/i },
{ :version=>/<meta name="generator"[^>]*content="PHP Link Directory ([0-9\.]+)"/ },
]
end
