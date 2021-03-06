Plugin.define do
name "coWiki"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.2"
description "coWiki - wiki"
website "http://www.cowiki.org/"
matches [
    {:text=>'<!-- Generated by coWiki'},
    {:text=>'content="coWiki'},
    {:version=>/<!-- Generated by coWiki ([^ ]+) \((http:\/\/www.develnet.org|http:\/\/www.cowiki.org)\) -->/},
    {:version=>/<meta name="generator" content="coWiki ([^,]+), (http:\/\/www.develnet.org|http:\/\/www.cowiki.org)"[^>]*>/}
]
end
