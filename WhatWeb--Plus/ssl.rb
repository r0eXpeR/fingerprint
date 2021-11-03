Plugin.define do
name "SSL-Certificate"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.2"
description "This plugin retrieves details from SSL certificate files."
passive do
	m=[]
	if @body =~ /^-----BEGIN CERTIFICATE-----/ and @body =~ /^-----END CERTIFICATE-----/ and @body =~ /Public Key Algorithm:/ and @body =~ /Signature Algorithm:/ and @body =~ /Issuer:/
		m << { :name=>"SSL Cert Text" }
		m << { :string=>@body.scan(/Issuer:[\s]*([^\r^\n]+)/)[0].to_s+" ("+@body.scan(/RSA Public Key:[\s]*\(([^\)]+)\)/).flatten.first+") ("+@body.scan(/^[\s]+Not After : ([^\r^\n]+)/).flatten.first+")" } if @body =~ /Issuer:[\s]*([^\r^\n]+)/ and @body =~ /RSA Public Key:[\s]*\(([^\)]+)\)/ and @body =~ /^[\s]+Not After : ([^\r^\n]+)/
	end
	m << { :string=>"x-x509-ca-cert" } if @headers["Content-Type"] =~ /^[\s]*application\/x-x509-ca-cert/
	m
end
end
