Plugin.define do
name "VMware-VirtualCenter"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "VMware VirtualCenter is a software suite designed to centralize the management of virtualized IT environments."
website "http://www.vmware.com/products/vcenter-server/"
matches [
{ :text=>'<script type="text/javascript">document.write("<title>" + ID_VC_Welcome + "</title>");</script>' },
{ :text=>'<meta name="description" content="VMware vSphere is virtual infrastructure software for partitioning, consolidating and managing systems in mission-critical environments. VMware ESX Server provides a highly scalable platform with advanced resource management capabilities, which can be managed by vSphere.">' },
{ :url=>"/en/welcomeRes.js", :version=>/var ID_VC_Welcome = "Welcome to VMware vSphere ([^\s^\"]+)";/ },
{ :certainty=>75, :text=>'<title>VMware Virtual Infrastructure Web Access</title>' },
{ :url=>"/banner.png", :md5=>"53ea8ad28aabd281be50075c4977d31b" },
]
end
