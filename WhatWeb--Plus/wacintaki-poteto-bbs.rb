Plugin.define do
name "Wacintaki-Poteto-BBS"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "Wacintaki Poteto BBS is a CSS conversion of Oekaki Poteto 5.x."
website "http://www.ninechime.com/products/"
dorks [
'"Wacintaki * by Waccoon / Based on OekakiPoteto v5.x by RanmaGuy and Marcello"']
matches [
{ :version=>/<a href="http:\/\/www\.NineChime\.com\/products\/" title="Get your own free BBS!">Wacintaki ([^\s^<]+)<\/a> by Waccoon/ },
{ :regexp=>/<div align="center">OekakiPoteto v([^\s]+) by <a href="http:\/\/suteki\.nu">RanmaGuy<\/a> and <a href="http:\/\/www\.cellosoft\.com">Marcello<\/a>/ },
{ :text=>'OekakiPoteto 5.x by <a href="http://www.suteki.nu">RanmaGuy</a> and <a href="http://www.cellosoft.com">Marcello</a><br />' },
]
end
