Plugin.define do
name "ScrewTurn-Wiki"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "ScrewTurn Wiki allows you to create, manage and share wikis."
website "http://www.screwturn.eu/"
dorks [
'"Powered by ScrewTurn Wiki version "'
]
matches [
{ :version=>/Powered by <a class="externallink" href="http:\/\/www\.screwturn\.eu" title="ScrewTurn Wiki" target="_blank">ScrewTurn Wiki<\/a> version ([\d\.]+)/ },
]
end
