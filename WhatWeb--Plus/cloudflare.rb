Plugin.define do
name "CloudFlare"
authors [
  "Aung Khant <http://yehg.net/> & David P Robinson <david@intruder.io>", 

  "Andrew Horton", 

  "David P Robinson <david@intruder.io>", 

]
version "0.3"
description "CloudFlare is a content delivery network. Its features include DDoS protection and Web Application Firewall functionality"
website "https://www.cloudflare.com/"
dorks [
'"Performance & Security by Cloudflare"'
]
matches [
    {:name=>"email address protection", :regexp=>/\/cdn-cgi\/l\/email-protection#[a-f0-9]{36}/},
    {:name=>'access restricted iframe', :text=>'<iframe frameborder="0" width="100%" height="100%" src="http://anti-virus.cloudflare.com/cdn-cgi/anti-virus-challenge?h='},
    {:name=>'footer', :text=>'&nbsp;&nbsp;Performance &amp; Security by <a id="FooterCloudFlare" href="https://www.cloudflare.com" target="_blank">CloudFlare</a>'},
    {:search=>"headers", :text=>'cloudflare-nginx'},
    {:search=>"headers[server]", :regexp=>/cloudflare\-nginx/, :name=>"server header"},
    {:search=>"headers[set-cookie]", :regexp=>/__cfduid/, :name=>"__cfduid cookie"},
    {:search=>'headers[server]', :regexp=>/^cloudflare$/}
]
end
