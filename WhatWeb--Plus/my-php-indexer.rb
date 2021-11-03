Plugin.define do
name "My-PHP-Indexer"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.2"
description "PHP file indexer"
website "http://www.mafiatic.com"
dorks [
'"powered by My PHP Indexer"'
]
matches [
{ :version=>/<!--Copyright--><a target="_blank" class="l" href="http:\/\/www.mafiatic.com">Powered by My PHP Indexer ([\d\.]+) \| Copyright &copy; [0-9]{4}\-[0-9]{4} Mafiatic Inc.<\/a><!--Copyright-->/ },
]
end
