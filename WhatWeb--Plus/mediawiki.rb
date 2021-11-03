Plugin.define do
name "MediaWiki"
authors [
  "Tonmoy Saikia",

  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.2"
description "MediaWiki is a free software wiki  package written in PHP, originally for use on Wikipedia http://www.mediawiki.org/wiki/MediaWiki"
dorks [
'"Powered by MediaWiki"',
'inurl:wiki/MediaWiki',
'inurl:Special:Version "This wiki is powered by MediaWiki"'
]
matches [
    {:certainty=>75, :ghdb=>'inurl:wiki MediaWiki'},
    {:regexp=>/<(?:a|img)[^>]+>Powered by MediaWiki<.a>/},
    {:regexp=>/<a[^>]+.Special:WhatLinksHere./},
    {:regexp=>/<body[^>]+class="mediawiki/},
    {:regexp=>/^MediaWiki ?(.+)$/, :search=>'body',:offset=>1},
    {:text=>'/wiki/images/6/64/Favicon.ico'},
    {:text=>'Powered by MediaWiki'},
    {:text=>'alt="Powered by MediaWiki"'},
    {:text=>'generator" content="MediaWiki'},
    {:version=>/<meta name="generator" content="MediaWiki ([^\s^"]+)" \/>/},
    {:version=>/<td><a href="http:\/\/www\.mediawiki\.org\/" class="external text" rel="nofollow">MediaWiki<\/a><\/td>[\s]+<td>([^<]+)<\/td>/}
]
end
