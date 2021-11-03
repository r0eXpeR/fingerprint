Plugin.define do
name "MyHobbySite"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.2"
description "MyHobbySite is a website Content Management System (CMS) programmed in PHP and tailored specifically for collectors of live music. Like any other CMS, MyHobbySite supports page creation, file management, and dynamic text editing via a WYSIWYG editor."
website "http://www.myhobbysite.net/"
dorks [
'"Powered by MyHobbySite"'
]
matches [
{ :text=>' (Powered by MyHobbySite)</title>' },
{ :text=>'					<!-- Removing the copyright notice without purchasing the MyHobbySite Copyright Removal License voids the MyHobbySite End User License Agreement -->' },
{ :text=>'		<a name="top"></a> <!-- Necessary for the "jump to the top of the page" links -->' },
{ :version=>/Powered by <a href="http:\/\/www.myhobbysite.net" target="_blank">MyHobbySite<\/a> ([\d\.]+) / },
]
end
