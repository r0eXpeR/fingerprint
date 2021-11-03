Plugin.define do
name "Facebook-Plugin"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "This plugin identifies Facebook plugins"
website "http://apps.facebook.com/widgets/"
matches [
    {:string=>/<i?frame[^>]+src[\s]*="http:\/\/(www|apps)\.facebook.com\/plugins\/([^\.^\/^\?]+)\.php\?/i, :offset=>1 },
    {:text=>'apps.facebook.com/plugins/'},
    {:text=>'www.facebook.com/plugins/'}
]
end
