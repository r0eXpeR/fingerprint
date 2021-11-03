Plugin.define do
name "eDirectory"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "Arca Solutions eDirectory provides a php and .NET software platform to allow site owners to publish directory-driven websites with ease. - Hompage: http://www.edirectory.com/"
dorks [
'"Powered by eDirectory" "type a keyword" "listings" "events"'
]
matches [
    {:regexp=>/ class="basePowered">Powered by <a href="[^"]+" target="_blank">eDirectory&trade;[\s]?<\/a>/},
    {:text=>'<span class="basePowered">Powered by <a href="http://www.edirectory.com" target="_blank">eDirectory&trade;</a>.</span>'},
    {:text=>'Powered by <a href="http://www.edirectory.com'},
    {:text=>'target="_blank">eDirectory&trade'},
    {:version=>/<blockquote class="eDirectoryVersion"><span class="basePowered">Powered by <a href="http:\/\/www\.edirectory\.com" target="_blank">eDirectory&trade;<\/a> <\/span> v\.([^<^\s]+)<\/blockquote>/}
]
end
