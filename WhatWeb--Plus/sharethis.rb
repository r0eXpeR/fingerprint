Plugin.define do
name "ShareThis"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "ShareThis is a utility that makes it easy to share articles to social media websites like Digg or Facebook [JavaScript]"
website "http://sharethis.com/"
matches [
    {:regexp=>/<script [^>]*src=["|'][^"^']+w\.sharethis\.com\//i },
    {:search=>'body', :regexp=>/w\.sharethis\.com./}
]
end
