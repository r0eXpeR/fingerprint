Plugin.define do
name "WWW-Authenticate"
authors [
  "Aung Khant, http://yehg.net", 

  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.2"
description "This plugin identifies the WWW-Authenticate HTTP header and extracts the authentication method and realm."
passive do
	m=[]
	unless @headers['www-authenticate'].nil?
		if @headers['www-authenticate'].to_s =~ /realm=/
			m << { :module=>@headers['www-authenticate'].scan(/([a-z]{3,20})[^\r^\n]{1,256}realm="/i).flatten } if @headers['www-authenticate'].to_s =~ /[a-z]{3,20}[^\r^\n]{1,256}realm="/i
			m << { :string=>@headers['www-authenticate'].scan(/realm="([^\"]{1,256})"/i).flatten } if @headers['www-authenticate'].to_s =~ /realm="[^\"]{1,256}"/i
		else
			m << { :module=>@headers['www-authenticate'].to_s }
		end
	end
	m
end
end
