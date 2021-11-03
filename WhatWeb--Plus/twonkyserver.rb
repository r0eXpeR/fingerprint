Plugin.define do
name "TwonkyServer"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "Twonky is a line of computer and mobile applications that finds all of your digital media collections and shares them with PCs, TVs, stereos and other devices connected to your network."
website "http://www.twonky.com/"
dorks [
'inurl:":9000" PacketVideo corporation (intitle:"TwonkyMedia"|intitle:"TwonkyServer")'
]
matches [
{ :search=>"headers[server]", :regexp=>/TwonkyMedia UPnP/ },
{ :text=>'<meta name="description" content="TwonkyMedia Digital Home">' },
{ :text=>'<td><strong><font color="#294A94" size="2">TwonkyMedia Settings</font></strong></td>' },
{ :text=>'<html><head><title>TwonkyServer Media Browser</title>' },
{ :text=>'<html><head><title>TwonkyMedia server media browser</title>' },
{ :string=>/<div id="copyright" class="copyright">Copyright . 2004-(20[\d]{2}) PacketVideo Corporation\. All rights reserved\.<\/div><\/div><hr>/ },
{ :string=>/<div id="copyright" class="copyright">Copyright&nbsp;&copy;&nbsp;2004-20(20[\d]{2}) PacketVideo&nbsp;Corporation\. All&nbsp;rights&nbsp;reserved<\/div><\/div><hr>/ },
]
end
