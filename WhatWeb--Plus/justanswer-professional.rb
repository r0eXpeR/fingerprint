Plugin.define do
name "JustAnswer-Professional"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "JustAnswer Professional Script is a PHP script that lets you start your own question answer website just like JustAnswer."
website "http://www.guruscript.com/"
dorks [
'inurl:forum_answer.php?que_id= "Powered By Guruscript.com"'
]
matches [
{ :certainty=>25, :text=>'<td align=center>Powered By <a href="http://guruscript.com">Guruscript.com</a></td></tr></table></div></body></html>' },
{ :regexp=>/<a href="register\.php\?typ=expert&que_id=[\d]+">Click here<\/a> to answer this question\./ },
{ :text=>'<img src="images/settings.png" style="vertical-align:middle;" />&nbsp;<a href="logout.php" class="cpanel_a">Logout </a><br>' },
]
end
