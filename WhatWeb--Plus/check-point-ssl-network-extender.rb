Plugin.define do
name "Check-Point-SSL-Network-Extender"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "SSL Network Extender adds SSL VPN functionality to the IPSec VPN capabilities of VPN-1 gateways"
website "http://www.checkpoint.com/products/ssl_network_ext/"
matches [
    {:regexp=>/<script src="cookies\.js"><\/script>[\s]+<script>document\.write\(conn_html\)<\/script>[\s]+<HEAD>/},
    {:search=>"headers", :text=>'Check Point SVN foundation'},
    {:search=>"headers[server]", :regexp=>/^Check Point SVN foundation$/},
    {:text=>'<meta name="description" content="Webui Login Page"/>  <!-- changes to this line must be reflected in sfwOverrides.js & lm_home.js -->', :string=>"Security Gateway"},
    {:url=>"/help_data.html", :regexp=>/<meta name=Generator content="Microsoft Word 11 \(filtered\)">[\s]+<title>Check Point SSL Network Extender HELP<\/title>/},
    {:url=>"/logo.gif", :md5=>"a5be381441844d96e70407481e1390b1"},
    {:version=>/<form autocomplete="off" method="post" action="\/platform\.cgi\?" target="_top">[\s]+<input type="hidden" name="thispage" value="index\.htm">[\s]+<div class="version_div">([^<]+)<\/div>/, :string=>"Security Gateway"}
]
end
