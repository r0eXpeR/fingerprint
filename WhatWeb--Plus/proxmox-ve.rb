Plugin.define do
name "Proxmox-VE"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "Proxmox Virtual Environment is an easy to use Open Source virtualization platform for running Virtual Appliances and Virtual Machines."
website "http://www.proxmox.com/products/proxmox-ve"
dorks [
'"JavaScript is not available" intitle:"Proxmox Virtual Environment"'
]
matches [
{ :version=>/<a href='http:\/\/www\.proxmox\.com' target='_blank' class="boxheadline">Proxmox Virtual Environment ([^<^\s]+)<\/a>/ },
{ :text=>'<img alt="" style="display:block;border:0px;width:1000px;max-height:300px;" src=\'/images/logo_pve.jpg\'>' },
]
end
