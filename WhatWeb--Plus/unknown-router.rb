Plugin.define do
name "Router"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.4"
description "This plugin identifies routers for which the vendor is unknown or where fingerprinting is exceptionally difficult."
matches [
{ :model=>'Arris Touchstone Device', :url=>"/favicon.ico", :md5=>"a8fe5b8ae2c445a33ac41b33ccc9a120" },
{ :model=>'ST 605', :url=>"/favicon.ico", :md5=>"d16a0da12074dae41980a6918d33f031" },
{ :md5=>"d8d705cef8dbf67357ee908f42fd1baa", :url=>"/favicon.ico" },
{ :md5=>"129f914b2570b50374ebeb8f1306617d", :url=>"/login/keys.png" },
]
passive do
	m=[]
	if @headers["server"] =~ /Boa\/[\d\.]+ \(with Intersil Extensions\)/ and @headers["www-authenticate"] =~ /Basic realm="LOGIN Enter Password \(default is private\)"/
		m << { :certainty=>25, :model=>"D-Link", :name=>"HTTP Server Header and WWW-Authenticate Realm" }
	end
	if @headers["server"] =~ /Niagara Web Server\/([\d\.]+)/
		m << { :certainty=>75, :name=>"niagara_audit=guest Cookie" } if @headers["set-cookie"] =~ /niagara_audit=guest; path=\//
	end
	if @headers["www-authenticate"] =~ /Basic realm="Default Admin.= admin\/admin"/ and @headers["server"] =~ /RomPager/i
		m << { :certainty=>25, :model=>"ADSL2+" }
	end
	if @headers["server"] =~ /^thttpd-alphanetworks\/([\d\.]+)$/
		m << { :version=>@headers["server"].scan(/^thttpd-alphanetworks\/([\d\.]+)$/) }
		m << { :model=>@headers["www-authenticate"].scan(/Basic realm="([^\s^"]+)"/) } if @headers["www-authenticate"] =~ /Basic realm="([^\s^"]+)"/
	end
	m
end
end
