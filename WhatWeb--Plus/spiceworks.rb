Plugin.define do
name "Spiceworks"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "Spiceworks' single, easy-to-use interface combines Network Inventory, Help Desk, Mapping, Reporting, Monitoring and Troubleshooting"
website "http://www.spiceworks.com/product/"
matches [
{ :text=>'<meta name="author" content="Spiceworks, Inc." />' },
{ :text=>'<p>Spiceworks is compatible with <a href="http://community.spiceworks.com/help/Spiceworks_Requirements#Browser">modern browsers</a>, and requires JavaScript, Cookies, and Stylesheets (CSS) to function correctly.</p>' },
{ :text=>'<title>Spiceworks - Login Required</title>' },
]
passive do
	m=[]
	m << { :name=>"spiceworks_session cookie" } if @headers["set-cookie"] =~ /spiceworks_session=BAh7[^\s]+--/
	m << { :name=>"spiceworks cookie" } if @headers["set-cookie"] =~ /spiceworks=[a-f\d]{32}; path=\//
	unless m.empty?
		if @body =~ /<h1><img alt="Spiceworks" src="\/images\/logos\/large\.png\?([\d]{7})" \/><\/h1>/
			m << { :version=>@body.scan(/<h1><img alt="Spiceworks" src="\/images\/logos\/large\.png\?([\d]{7})" \/><\/h1>/)[0][0].insert(1, ".").insert(3, ".") } unless version.nil?
		end
		if @body =~ /<link href="\/stylesheets\/general\.css\?([\d]{7}+)" media="screen" rel="stylesheet" type="text\/css" \/>/
			m << { :version=>@body.scan(/<link href="\/stylesheets\/general\.css\?([\d]{7})" media="screen" rel="stylesheet" type="text\/css" \/>/)[0][0].insert(1, ".").insert(3, ".") }
		end
	end
	m
end
end
