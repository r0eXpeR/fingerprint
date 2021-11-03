Plugin.define do
name "MailSiteExpress"
authors [
  "Andrew Horton",

]
version "0.2"
description "Webmail in ASP. Versions < 6.1.2 insecure http://marc.info/?l=bugtraq&m=113053680631151&w=2 -"
website "http://www.mailsite.com/products/express-webmail-server.asp"
dorks [
'intitle:"MailSite Express" "MailSite Express Login"'
]
matches [
{:text=>'<title>MailSite Express</title>' },
{:regexp=>/<font face="arial" size="1">MailSite Express <br> version [0-9\.]+<\/font>/ },
{:certainty=>50, :regexp=>/<!-- This software is copyright [0-9 ,\.]+ Rockliffe systems, Inc. -->/ },
{:text=>'<b>MailSite <em>Express</em> Login</b>' },
{:text=>'onSubmit="OpenExpress(document.ExpressLogin)"' }
]
end
