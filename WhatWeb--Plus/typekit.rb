Plugin.define do
name "Typekit"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "JavaScript font manager"
website "http://typekit.com/"
matches [
    {:regexp=>/<link [^>]*href="[^"]+use\.typekit\.(?:net|com)/},
    {:regexp=>/<script [^>]*src=["'][^>]*use\.typekit\.com/i },
    {:regexp=>/use\.typekit\.com/, :search=>'body'}
]
end
