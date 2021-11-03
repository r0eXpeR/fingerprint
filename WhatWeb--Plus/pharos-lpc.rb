Plugin.define do
name "Pharos-LPC"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "Pharos LPC web interface - All-in-one control solution for entertainment and LED lighting installations."
website "http://www.pharoscontrols.com/products/lighting_controllers/lpc"
passive do
	m=[]
	if @body =~ /<title>Pharos LPC[^<]*<\/title>/
		if @body =~ /<td class = "header">Firmware Version:<\/td><td colspan = "4">([^<]+)<\/td>/
			m << { :firmware=>@body.scan(/<td class = "header">Firmware Version:<\/td><td colspan = "4">([^<]+)<\/td>/) }
		end
		if @body =~ /<td class = "header">Expansion Modules:<\/td><td>([^<]+)<\/td>/
			m << { :module=>@body.scan(/<td class = "header">Expansion Modules:<\/td><td>([^<]+)<\/td>/) }
		end
		if @body =~ /<td class = "header">Product Type:<\/td><td colspan = "4">([^<]+)<\/td>/
			m << { :model=>@body.scan(/<td class = "header">Product Type:<\/td><td colspan = "4">([^<]+)<\/td>/) }
		end
		if @body =~ /<title>Pharos (LPC[\d]) [\d]{6}[\s]*<\/title>/
			m << { :model=>@body.scan(/<title>Pharos (LPC[\d]) [\d]{6}[\s]*<\/title>/) }
		end
	end
	m << { :certainty=>75, :name=>"Redirect Location" } if @headers["location"] =~ /^https?:\/\/[^\/]+\/pharos_lpc\/index\.asp$/
	m << { :name=>"authenticate realm" } if @headers["www-authenticate"] =~ /Digest realm="PharosLPC"/
	m
end
end
