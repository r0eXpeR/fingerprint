Plugin.define do
name "Webmatic"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.2"
description "Webmatic CMS"
website "http://www.webmatic.it/it/"
matches [
{ :text=>'Powered&nbsp;by&nbsp;<a href="http://www.webmatic.it">Webmatic</a>' },
{ :version=>/ href="http:\/\/www.valarsoft.com"[^>]+>Powered by: Webmatic ([^<]+)<\/a>/i },
]
end
