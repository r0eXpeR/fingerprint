Plugin.define do
name "Gitorious"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "Gitorious provides open source infrastructure for hosting open source projects that use Git - Requires: Ruby."
website "https://gitorious.org/gitorious"
dorks [
'intitle:"Gitorious" "Gitorious is a great way of collaborating on distributed open source projects" "About Gitorious" "Dashboard" "Login"'
]
matches [
    {:regexp=>/<a href="http:\/\/gitorious\.org"><img alt="Poweredby" src="\/images\/\.\.\/img\/poweredby\.png\?[\d]+" title="Powered by Gitorious" \/><\/a><\/div>/},
    {:search=>"headers", :text=>'_gitorious_sess'},
    {:search=>"headers[set-cookie]", :regexp=>/_gitorious_sess=[^-]+--[^;]+; domain=/},
    {:text=>'Powered by Gitorious'}
]
end
