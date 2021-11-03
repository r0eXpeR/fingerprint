Plugin.define do
name "Pro-Chat-Rooms"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.2"
description "An Ideal Solution For Web Conferencing, Dating and all Online Communities."
website "http://www.prochatrooms.com/"
dorks [
'"Pro Chat Rooms" "Please enter your login details below." "Select Room"'
]
matches [
{ :text=>'<title>Pro Chat Rooms</title>' },
{ :text=>'<tr id="doPasswordBox"><td>Password:</td><td><input type="password" name="password" id="password" value="" onblur="def(\'password\')" class="uInput"/></td></tr>' },
{ :text=>'	showError("char_error", "Sorry, Username is already registered.");' },
{ :text=>"var loginNameErrorChr = 'Your username has special characters.<br>These characters are not allowed,<br>!@#$\%SPC^&*()+=-[]\&#39;;,./{}|&#34:<>?.<br>Please remove them and try again.';" },

{ :version=>/<img src="images\/chat.gif" border="0" alt="Pro Chat Rooms v([\d\.]+)" title="Pro Chat Rooms v([\d\.]+)" \/>/ },
]
end
