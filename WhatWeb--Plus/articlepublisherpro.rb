Plugin.define do
name "ArticlePublisherPRO"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.2"
description "The Flexible and Easy Article Publishing System"
website "http://article-publisher-pro.phparticlescript.com/"
dorks [
'"powered by Article Publisher PRO" -Vulnerability'
]
matches [
{ :text=>'<script>location.replace("./admin.php?showlogin");</script>' },
{ :text=>'<title>Article Publisher PRO Administrator Control Panel</title>' },
{ :text=>'<img src="/images/logo_app.gif"></div></td><td width="60%"><div id="title" class="column">Admin Control Panel</div></td>' },
{ :text=>'		<form name=fl method=post action=admin.php?login>' },
{ :text=>'<br><br><center><b>Please use a proper method to browse article(s) - The method you are using is not allowed...</b></center>' },
{ :version=>/<div class="powered">Powered by <a href="http:\/\/www.ArticlePublisherPRO.com" target="_blank">Article Publisher PRO<\/a>  v([\d\.]+)/ },
]
end
