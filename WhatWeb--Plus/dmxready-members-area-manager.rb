Plugin.define do
name "DMXReady-Members-Area-Manager"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "DMXReady Members Area Manager allows you to quickly create a whole area of your website that is 'members only' so you can control who sees your content."
website "http://www.dmxready.com/?product=members-area-manager"
dorks [
'inurl:inc_membersareamanager.asp'
]
matches [
{ :regexp=>/<p align="center"><a href="[^"]*\/applications\/MembersAreaManager\/inc_membersareamanager\.asp\?show=sendpassword">Forget Password\?<\/a>/ },
{ :regexp=>/<form ACTION="[^"]*\/applications\/MembersAreaManager\/inc_membersareamanager\.asp" method="POST" name="login" onSubmit="YY_checkform\('login','entity_username','#q','0','Please provide username','entity_password','#q','0','Please provide password'\);return document.MM_returnValue" >/ },

]
end
