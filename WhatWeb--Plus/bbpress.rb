Plugin.define do
name "bbPress"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

  "@lins05", 

]
version "0.2"
description "bbPress is forum software with a twist from the creators of WordPress."
website "http://bbpress.org/"
dorks [
'"is proudly powered by bbPress"'
]
matches [
    {:regexp=>/ is proudly powered by <a[^>]+href="http:\/\/bbpress\.org">bbPress<\/a>/},
    {:text=>'<!-- If you like showing off the fact that your server rocks -->'},
    {:text=>'<div id="bbpress-forums">'},
    {:text=>'is proudly powered by <a href="http://bbpress.org'},
    {:version=>/<meta name="generator" content="bbPress ([\d\.]+)" \/>/}
]
end
