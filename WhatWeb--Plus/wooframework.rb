Plugin.define do
name "WooFramework"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "WooFramework - theme framework - http://www.woothemes.com/wooframework/"
matches [
{ :version=>/<meta name="generator" content="WooFramework ([\d\.]+)"/ },
]
end
