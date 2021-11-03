Plugin.define do
	name "Dell-OpenManage-Switch-Administrator"
	authors [
		"Max Davitt", 

	]
	version "0.1"
	description "The Dell OpenManage Switch Administrator is a web interface for various Dell network switches (PowerConnect and N series switches?)."
	matches [
		{ :name => "server", :certainty => 25, :search => "headers[server]", :text => "Web Server" },
		{ :name => "title", :certainty => 75, :text => "<title>Dell OpenManage Switch Administrator</title>" },
		{ :name => "redirect", :certainty => 75, :text => "window.top.location.href = \"dell_login.html\";" },
		{ :name => "model", :url => "/branding.html", :model => /<B>\s+([\w\d\-_ ]+)\s+<\// },
		{ :name => "model", :url => "/base/branding.html", :model => /<B>\s+([\w\d\-_ ]+)\s+<\// },
		{ :name => "alias", :url => "/dell_login.html", :string => /"login_text">\s+Login: [\d\.]+&nbsp;([\w\d\-_ ]+)\s+<\// },
		{ :name => "model", :url => "/dell_login.html", :model => /"login_server_default">([\w\d\-_ ]+)<\// }
	]
end
