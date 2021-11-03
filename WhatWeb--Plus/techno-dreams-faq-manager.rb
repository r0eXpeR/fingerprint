Plugin.define do
name "FAQ-Manager"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "A full and ready to use ASP Script that enables you managing a FAQ List for your site. It lists FAQ questions and answers by categories. With search capabilities."
website "http://www.t-dreams.com/faqmanager.asp"
matches [
{ :text=>'		<a href="admin/">Admin Area</a></td></tr></table></body></html>' },
{ :text=>'		<td><font size="-1">&nbsp;</font><p><b><font size="-1">FAQ ADMIN AREA</font></b></td>' },
]
end
