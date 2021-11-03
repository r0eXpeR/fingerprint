Plugin.define do
name "Social-Strata"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

  "Andrew Horton", 

]
version "0.2"
description ""
website "http://socialstrata.com/"
dorks [
'inurl:"/eve/personal?x_myspace_page=profile"'
]
matches [
{ :ghdb=>'inurl:"/eve/personal?x_myspace_page=profile" "Powered by Social Strata"' },
{ :text=>'<a href="http://socialstrata.com/landing/goto.php?a=eve" target="_blank">Powered by Social Strata</a>' },
{ :version=>/Powered by: <a target="_blank" href="http:\/\/eveforenterprise\.com">Groupee<\/a><SUP>TM<\/SUP> \(version ([\d\.]+)\) from Groupee Inc\./ },
]
end
