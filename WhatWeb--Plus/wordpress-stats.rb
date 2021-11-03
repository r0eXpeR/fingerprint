Plugin.define do
name "WordPress-Stats"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "WordPress.com Stats"
website "https://wordpress.com"
matches [
{ :regexp=>/<script src="https?:\/\/(ssl-)?stats\.wordpress\.com\/[^"]+" type="text\/javascript"><\/script>/ },
{ :regexp=>/<noscript><img src="https?:\/\/stats\.wordpress\.com\/b\.gif\?v=noscript"/ },
]
end
