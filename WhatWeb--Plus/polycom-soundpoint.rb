Plugin.define do
name "Polycom-SoundPoint"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.2"
description "Polycom SoundPoint VOIP phone"
website "http://www.polycom.com/products/voice/desktop_solutions/soundpoint/"
dorks [
'"SoundPoint IP Configuration" intitle:"SoundPoint IP Configuration Utility - Registration" ext:htm'
]
passive do
	m=[]
	if @headers["server"] =~ /^Polycom SoundPoint IP Telephone HTTPd$/
		m << { :name=>"HTTP Server Header" }
		m << { :url=>"/reg_1.htm", :string=>@body.scan(/<td width="200" bgcolor="#999999"><input value="([^"]+)" name="reg\.1\.displayName"\/><\/td>/).flatten } if @body =~ /<td width="200" bgcolor="#999999"><input value="([^"]+)" name="reg\.1\.displayName"\/><\/td>/

		if @body =~ /<td width="200" bgcolor="#999999"><input value="([^"]+)" name="reg\.1\.auth\.userId"\/><\/td>/ and @body =~ /<td width="200" bgcolor="#999999"><input value="([^"]*)" type="password" name="reg\.1\.auth\.password"\/><\/td>/

			m << { :url=>"/reg_1.htm", :account=>@body.scan(/<td width="200" bgcolor="#999999"><input value="([^"]+)" name="reg\.1\.auth\.userId"\/><\/td>/).to_s + ":" + @body.scan(/<td width="200" bgcolor="#999999"><input value="([^"]*)" type="password" name="reg\.1\.auth\.password"\/><\/td>/).flatten }

		end
	end
	m
end
end
