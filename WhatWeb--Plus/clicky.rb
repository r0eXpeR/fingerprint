Plugin.define do
name "Clicky"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "Clicky - Real Time Web Analytics"
website "https://www.getclicky.com/"
matches [
    {:regexp=>/<script[^>]+src=["'](https?:)?\/\/static\.getclicky\.com/i },
    {:regexp=>/static\.getclicky\.com/, :search=>'body'},
    {:text=>'<script src="//static.getclicky.com/js'}
]
end
