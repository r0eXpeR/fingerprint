Plugin.define do
name "Zotonic"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

  "Andrew Horton", 

]
version "0.2"
description "Zotonic, The Erlang CMS - Zotonic is an open source content management system for people that want a fast, extensible, flexible and complete system for dynamic web sites. It is built from the ground up with rich internet applications and web publishing in mind."
website "http://zotonic.com/"
matches [
    {:regexp=>/Zotonic/, :search=>"headers[server]"},
    {:text=>'/lib/js/apps/zotonic-1.0'},
    {:text=>'powered by: Zotonic'},
    {:version=>/Zotonic\/([^\s]+)/, :search=>"headers[server]"}
]
passive do
	m=[]
	if @headers["set-cookie"] =~ /z_pid=[^;]+;/ and @headers["set-cookie"] =~ /z_sid=[^;]+;/
		m << { :name=>"z_pid and z_sid cookies" }
	end
	m
end
end
