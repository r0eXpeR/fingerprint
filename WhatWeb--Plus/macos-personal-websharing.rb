Plugin.define do
name "MACOS-Personal-Websharing"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "Web Sharing is a feature in Mac OS X that allows you to serve documents and other files from your computer."
website "http://support.apple.com/kb/HT2973"
passive do
	m=[]
	m << { :name=>"HTTP Server Header", :string=>"Apache" } if @headers["server"] =~ /^MACOS_Personal_Websharing$/
	m
end
end
