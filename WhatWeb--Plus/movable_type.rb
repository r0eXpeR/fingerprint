Plugin.define do
name "Movable-Type"
authors [
  "Andrew Horton",

  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.4"
description "Blogging platform"
website "http://www.movabletype.org/"
dorks [
'"Powered by Movable Type"',
'inurl:/mt-check.cgi intitle:"Movable Type System Check [mt-check.cgi]"'
]
matches [
    {:filepath=>/<li><strong>Current working directory:<\/strong> <code>([^<]+)<\/code><\/li>/},
    {:name=>"Powered by link", :regexp=>/<a href="http:\/\/sixapart\.com">Powered by Movable Type<\/a>/},
    {:name=>"Powered by link", :regexp=>/Powered by <a href="http:\/\/www\.movabletype\.com\/"[^>]*>Movable Type<\/a>/},
    {:name=>"javascript with 'mt' in the name",
:certainty=>50, :regexp=>/<script type="text\/javascript" src="[^"]+mt(-site)?\.js"><\/script>/},
    {:name=>"meta generator tag", :regexp=>/<meta name="generator" content="http:\/\/www\.movabletype\.org\/" \/>/},
    {:name=>"mt-tags|mt-tb|mt-cp|mt-search|mt-user-login|mt-recommend cgi",
:certainty=>75,
:regexp=>/"[^"]+\/mt-(tags|tb|cp|search|user-login|recommend)\.[f]?cgi[^"]*"/},
    {:search=>'body', :regexp=>/Movable Type/},
    {:text=>'<title>Movable Type System Check [mt-check.cgi]</title>'},
    {:version=>/<li><strong>Movable Type version:<\/strong> <code>([^<]+)<\/code><\/li>/},
    {:version=>/<meta name="generator" content="Movable Type ([^"]*)/,  :name=>"meta generator tag"}
]
end
