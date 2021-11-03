Plugin.define do
name "podPress"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "podPress - A dream plugin for Podcastrs using WordPress."
website "http://www.mightyseek.com/podpress"
dorks [
'"Podcast powered by podPress"'
]
matches [
{ :version=>/<cite>Podcast Powered by <a href="http:\/\/www.mightyseek.com\/podpress\/" title="podPress, the dream plugin for podcasting with WordPress"><strong>podPress \(v([\d\.]+)\)<\/strong><\/a><\/cite>/ },
{ :version=>/<div id="podPress_footer">Podcast powered by <a href="http:\/\/wordpress.org\/extend\/plugins\/podpress\/" title="podPress, a plugin for podcasting with WordPress"><strong>podPress v([\d\.]+)<\/strong><\/a><\/div>/ },
]
end
