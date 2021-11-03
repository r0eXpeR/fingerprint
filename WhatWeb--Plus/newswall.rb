Plugin.define do
name "newswall"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "newswall"
website "http://newswall.mayoco.de/"
dorks [
'"There\'s no newswall without javascript - please activate" inurl:newswall'
]
matches [
{ :regexp=>/<div id="screen"><noscript><p class="js">\s*There's no newswall without javascript - please activate\.\.\.\s*<\/p><\/noscript><\/div>/ },
]
end
