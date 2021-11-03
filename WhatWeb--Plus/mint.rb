Plugin.define do
name "Mint"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "Mint is an extensible, self-hosted web site analytics program"
website "http://www.haveamint.com/"
matches [
    {:regexp=>/<script [^>]*src=["'][^>]*mint\/\?js/i },
    {:regexp=>/mint.\?js/, :search=>'body'}
]
end
