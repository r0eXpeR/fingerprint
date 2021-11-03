Plugin.define do
name "phpMyBible"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "phpMyBible is an online collaborative project to make an e-book of the Holy Bible."
website "http://sourceforge.net/projects/phpmybible/"
dorks [
'inurl:"index.php?book=" inurl:"version=" inurl:"chapter="'
]
matches [
{ :text=>"<div class='randomverse'>" },
{ :text=>"<div class='fleft'><div class='chaphead'>" },
]
end
