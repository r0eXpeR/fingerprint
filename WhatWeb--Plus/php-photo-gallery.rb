Plugin.define do
name "PHP-Photo-Gallery"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "Easily create your own photo album on the internet. With the easy installation you can have your gallery up and running within 5 minutes with unlimited albums and photos."
website "http://phpweby.com/software/gallery"
dorks [
'"Powered by PHP Photo Gallery"'
]
matches [
{ :text=>'Powered by <a href="http://phpweby.com/software/gallery">PHP Photo Gallery</a>' }, # &copy; 2009 <a href="http://phpweby.com">PHP Weby</a><br />
{ :text=>'Powered by <a href="http://phpweby.com">PHP Photo Gallery</a>' },
]
end
