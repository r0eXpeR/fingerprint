Plugin.define do
name "CrushFTP"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

  "Andrew Horton", 

]
version "0.2"
description "A full-scale FTP server by Ben Spink written in Java using the SWING user interface libraries. [Mac OS/Windows/Linux]"
website "http://www.crushftp.com/"
matches [
    {:certainty=>25, :text=>'<script type="text/javascript" src="crushftp_functions.js"></script>'},
    {:name=>"CrushAuth Cookie", :regexp=>/^CrushAuth=/,  :search=>"headers[set-cookie]"},
    {:name=>"WWW-Authenticate", :version=>/^Basic realm="CrushFTP Server Version ([\d\.]+)"$/,  :search=>"headers[www-authenticate]"},
    {:regexp=>/^CrushFTP /, :search=>"headers[server]"},
    {:search=>"headers", :text=>'Server: CrushFTP HTTP Server'},
    {:text=>'CrushFTP WebInterface'},
    {:version=>/^CrushFTP (HTTP[\d]? Server )?Version ([\d\.]+)$/, :offset=>1, :search=>"headers[server]"}
]
passive do
	m=[]
	if @headers["server"] =~ /^CrushFTP /
		m << { :account=>@headers["x-dmuser"] } unless @headers["x-dmuser"].nil?
	end
	m
end
end
