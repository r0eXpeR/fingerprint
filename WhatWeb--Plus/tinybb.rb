Plugin.define do
name "TinyBB"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "TinyBB is a free, simple bulletin board script."
website "http://tinybb.net/"
dorks [
'"Proudly powered by TinyBB"'
]
matches [
{ :text=>"Proudly powered by <a href='http://tinybb.net'>TinyBB</a>" },
]
end
