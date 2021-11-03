Plugin.define do
name "Sawmill"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "Sawmill is a universal log analysis/reporting tool for almost any log including web, media, email, security, network and application logs."
website "http://www.sawmill.net/"
dorks [
'intitle:"Sawmill Login" "Sawmill Login" "Please enter your username and password."'
]
matches [
{ :regexp=>/<tr><td>Username:<\/td><td>Administrator<input type="hidden" name="cgionly_authentication_username" value="([^\"]+)"><\/td><\/tr>/ },
{ :text=>'<td><input id="password" class="username-psw text" type="password" value="" /><div id="password:error" class="form-error"></div></td>' },
{ :search=>"headers[server]", :version=>/^Sawmill\/([^\s]+)/ },
]
end
