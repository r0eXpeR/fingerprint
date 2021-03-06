Plugin.define do
	name "VMware-Horizon"
	authors [
		"Max Davitt", 

	]
	version "0.1"
	description "VMware Horizon is a modern platform for secure delivery of virtual desktops and apps across the hybrid cloud, from the market leader in software-defined data center and digital workspaces."
	website "https://www.vmware.com/products/horizon.html"
	matches [
		{ :name => "title", :certainty => 75, :text => "<title>VMware Horizon</title>" },
		{ :name => "info", :url => "/portal/info.jsp", :version => /\"clientVersion\":\"([\d\.]+)\"/ }
	]
end
