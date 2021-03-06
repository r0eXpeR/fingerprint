Plugin.define do
name "BeEF"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.4"
description "BeEF - Browser Exploitation Framework"
website "http://beefproject.com/"
matches [
{ :text=>'<img src="../images/beef.gif" onclick="new Effect.Shake(\'sidebar\');"></div> BeEF</h1>' },
{ :certainty=>75, :text=>'<title>Browser Exploitation Framework</title>' },
{ :regexp=>/<script[^>]+src=['"]?[^>^="'^"]+\/hook\/beefmagic\.js\.php['"]?/, :certainty=>75, :string=>"Hook" },
{ :regexp=>/<script[^>]+src=['"]?https?:\/\/[^\/]+\/hook\.js['"]?/, :certainty=>75, :string=>"Hook" },
{ :url=>"/ui/authentication", :text=>'<div id="centered"><img id="beef-logo" src="/ui/media/images/beef.png" alt="BeEF - The Browser Exploitation Framework" /></div>' },
{ :url=>"/ui/media/images/beef.png", :md5=>"5f8cdcd65c5c05f875710f2c10503192" },
{ :search=>"headers[server]", :version=>/^BeEF ([^\s]+)$/ },
]
end
