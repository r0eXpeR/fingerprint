Plugin.define do
name "HP-Virtual-Connect-Manager"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "HP Virtual Connect Enterprise Manager (VCEM) centralizes connection management and workload mobility for HP BladeSystem servers that use Virtual Connect to access LANs, SANs and converged network infrastructures. Virtual Connect is technology that rethinks how blade servers are connected to your LAN and SAN. With HP Virtual Connect, you can connect and pre-assign all of the LAN MAC addresses and SAN WWNs that the server pool might ever need at the same time that you wire the rack and enclosures."
website "http://h18004.www1.hp.com/products/blades/components/ethernet/vcem/index.html"
matches [
{ :text=>'<!-- HP Virtual Connect Manager                                            -->' },
{ :text=>'<h2><img src="./images/progress_bar_large.gif"></h2><br />Loading, please wait...' },
{ :string=>/<!--[\s]+\(C\) Copyright (20[\d]{2}) Hewlett-Packard Development Company, L\.P\.[\s]+-->/ },
{ :url=>"/html/index.html", :text=>'<title>HP Virtual Connect Manager</title>' },
{ :url=>"/html/index.html", :text=>"<frame id='MX_HIDDEN' name='MX_HIDDEN' src=\"common/hiddenFrame.html\" noresize>" },
]
end
