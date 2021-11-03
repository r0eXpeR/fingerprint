Plugin.define do
name "Glossword"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.2"
description "Glossword helps you to create and publish online multilingual dictionary, glossary, or reference."
website "http://glossword.biz/"
dorks [
'"Powered by Glossword"'
]
matches [
    {:text=>'content="Glossword'},
    {:version=>/<meta content="Glossword version ([\d\.\-a-z]+)" name="generator" \/>/},
    {:version=>/<meta name="generator" content="Glossword version ([\d\.\-a-z]+)" \/>/},
    {:version=>/<p>Powered by <a href="http:\/\/glossword.info\/" style="text-decoration:underline">Glossword<\/a> ([\d\.]+)<\/p>/}
]
end
