Plugin.define do
name "IBM-Web-Traffic-Express-Caching-Proxy"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "IBM Web Traffic Express - proxy, caching and filtering"
website "http://www.software.ibm.com/webservers/wte/"
matches [
    {:search=>"headers", :text=>'IBM-PROXY-WTE'},
    {:search=>"headers[server]", :version=>/^IBM-PROXY-WTE\/([^\s]+)/},
    {:text=>'/admin-bin/webexec/wte.html'},
    {:url=>"/admin-bin/webexec/wte.html", :string=>/<a href="https?:\/\/([^\/^"]+)(:\d+)?\/"><img src="https?:\/\/([^\/^"]+)(:\d+)?\/Docs\/docmast\.gif" alt="Caching Proxy Version ([^"]+)"><\/a>/},
    {:url=>"/admin-bin/webexec/wte.html", :version=>/<a href="https?:\/\/([^\/^"]+)(:\d+)?\/"><img src="https?:\/\/([^\/^"]+)(:\d+)?\/Docs\/docmast\.gif" alt="Caching Proxy Version ([^"]+)"><\/a>/, :offset=>4 }
]
end
