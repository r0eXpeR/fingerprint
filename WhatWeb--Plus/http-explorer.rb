Plugin.define do
name "Http-Explorer"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "Http explorer is a free easy-to-use web server with which you can share your musics, videos and images for several web displays"
website "http://http-explorer.sourceforge.net/"
matches [
    {:search=>"headers", :text=>'Http explorer'},
    {:search=>"headers[server]", :version=>/^Http explorer ([^\s]+)$/},
    {:version=>/<p id="pgfooter_p_main">\s+<a href="http:\/\/http\-explorer\.sourceforge\.net\/\?lang=[^"]+">Http explorer\s+([^\s^<]+)<\/a>/}
]
end
