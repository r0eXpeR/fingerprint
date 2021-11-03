Plugin.define do
name "NaviCOPA"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

  "Andrew Horton", 

]
version "0.2"
description "The NaviCOPA Web Server Software installs on any version of the Microsoft Windows operating system from 98 and up, including Windows Vista, and automatically configures itself for instant HTTP access. NaviCOPA does not limit the number of connections and comfortably serves 1000's of simultaneous connections"
website "http://www.navicopa.com/"
matches [
	{ :regexp=>/^InterVations NaviCOPA/, :search=>"headers[server]" },
	{ :version=>/^InterVations NaviCOPA Version ([\d\.]+) [\d]{1,2}[a-z]{2} [A-Z][a-z]+ [\d]{4}$/, :search=>"headers[server]" },
	{  :name=>"NaviCopaSession Cookie", :regexp=>/^NaviCopaSession/, :search=>"headers[set-cookie]" },
]
end
