Plugin.define do
name "Citrix-XenServer"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "Citrix XenServer is a complete, managed server virtualization platform built on the powerful Xen hypervisor."
website "http://www.citrix.com/English/ps2/products/feature.asp?contentID=2300351"
matches [
    {:text=>'<a href="XenCenterSetup.exe">XenCenter installer</a>'},
    {:text=>'Citrix Systems, Inc. XenServer'},
    {:url=>"/", :md5=>"141c8bbcda4cf773763e9f2108d62ff3"},
    {:url=>"/", :version=>/<html>\s+<title>XenServer ([^\s^<]+)<\/title>\s+<head>\s+<\/head>\s+<body>\s+<p\/>Citrix Systems, Inc\. XenServer ([^\s]+)\s+<p\/><a href="XenCenter\.iso">XenCenter CD image<\/a>\s+<p\/><a href="XenCenter\.msi">XenCenter installer<\/a>/}
]
end
