Plugin.define do
name "ashnews"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.2"
description "ashnews is a simple program using PHP/MySQL that allows you to easily add a news/blog system to your site."
website "http://projects.ashwebstudio.com/"
matches [
    {:text=>'powered by'},
    {:version=>/<td align="center"><font face=Arial size=1>News powered by <a href=http:\/\/projects.ashwebstudio.com>ashnews v([\d\.]+)<\/a><\/font><\/td>/}
]
end
