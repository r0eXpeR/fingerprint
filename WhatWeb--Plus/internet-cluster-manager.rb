Plugin.define do
name "Internet-Cluster-Manager"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

  "Andrew Horton", 

]
version "0.2"
description "The Internet Cluster Manager (ICM) lets you use Domino clusters to provide failover and workload balancing to HTTP clients."
website "http://www-12.lotus.com/ldd/doc/domino_notes/rnext/help6_admin.nsf/f4b82fbb75e942a6852566ac0037f284/36fd13678096637585256c1d0039a59b?OpenDocument"
matches [
    {:regexp=>/^Internet Cluster Manager/, :search=>"headers[server]"},
    {:search=>"headers", :text=>'Internet Cluster Manager'},
    {:version=>/^Internet Cluster Manager Ver\. ([^\s]+)$/, :search=>"headers[server]"}
]
end
