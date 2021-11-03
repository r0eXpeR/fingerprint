Plugin.define do
name "TVersity"
authors [
  "Andrew Horton",

]
version "0.2"
description "The TVersity Media Server lets you manage your Internet and home media"
website "tversity.com"
matches [
	{ :md5=>"300b5c3f134d7ec0bca862cf113149d8", :url=>"/favicon.ico" },
	{ :version=>/TVersity Media Server/, :search=>"headers[server]" },
	{ :version=>/TVersity Media Server\/([\d\.]+)/, :search=>"headers[server]" },
]
end
