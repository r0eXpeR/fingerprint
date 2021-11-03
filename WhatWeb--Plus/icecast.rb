Plugin.define do
name "Icecast"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "Icecast is a GPL streaming media server project that currently streams in MP3 format."
website "http://www.icecast.org/"
passive do
	m=[]
	if @headers["server"] =~ /^Icecast ([^\s]+)/
		m << { :version=>"#{$1}" }
	end
	if @headers["server"] =~ /^icecast\/([^\s]+)/
		m << { :version=>"#{$1}" }
	end
	m << { :string=>@headers["icy-name"].to_s } unless @headers["icy-name"].nil?
	m << { :certainty=>75, :name=>"WWW-Authenticate Header" } if @headers["www-authenticate"] =~ /Basic realm="Icecast/
	m
end
matches [
    {:search=>"headers", :text=>'icecast'}
]
end
