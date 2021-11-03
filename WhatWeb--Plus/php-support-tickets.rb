Plugin.define do
name "PHP-Support-Tickets"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "PHP Support Tickets - PHP5 / MySQL helpdesk system."
website "http://www.phpsupporttickets.com/"
dorks [
'"PHP Support Tickets" "Log In" intitle:"PHP Support Tickets :: Login"'
]
matches [
{ :version=>/<a href="http:\/\/www\.phpsupporttickets\.com" target="_blank" title="php support tickets">PHP Support Tickets v([^\s^<]+)<\/a><br \/><br \/>/ },
{ :text=>'<title>PHP Support Tickets :: Login</title>' },
{ :certainty=>75, :text=>'<meta name="copyright"   content="Triangle Solutions Ltd" />' },
{ :regexp=>/<!--<td class="boxborder list-menu" width="10%"><a href="javascript:popwindow\('help\.php#userpage','top=150,left=300,width=400,height=400,buttons=no,scrollbars=YES,location=no,menubar=no,resizable=no,status=no,directories=no,toolbar=no'\)" title="Help popup">Help<\/a><\/td>-->/ },
]
end
