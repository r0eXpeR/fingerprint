Plugin.define do
name "Pixel-Script"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "From simple to complex pixel page advertising system PHP Pixel Script makes it possible."
website "http://www.texmedia.de/"
dorks [
'"Powered by Pixel Script"'
]
matches [
{ :version=>/<font color=#8888888 style="font-size:9px">Powered by <a href="http:\/\/www.texmedia.de" target="_blank" style="color:#888888;font:normal;text-decoration:none">(Million )?Pixel Script<\/a> v?([^&]+) &copy; <a href="http:\/\/www.texmedia.de" style="color:#888888;font:normal;text-decoration:none" target="_blank">texmedia.de<\/a><\/font>/, :offset=>1 },

]
end
