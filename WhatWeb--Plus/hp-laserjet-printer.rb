Plugin.define do
name "HP-LaserJet-Printer"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.2"
description "HP LaserJet printer web interface"
website "http://www.hp.com/"
dorks [
'inurl:hp/device/this.LCDispatcher'
]
matches [
    {:model=>/<title>[\r\n]*(HP|hp) Color LaserJet ([^<]+)<\/title>/i, :offset=>1, :module=>"color"},
    {:model=>/<title>[\r\n]*(HP|hp) LaserJet ([^<]+)<\/title>/, :offset=>1},
    {:search=>"headers", :text=>'HP-ChaiSOE'},
    {:search=>"headers", :text=>'HP-ChaiServer'},
    {:text=>'<a href="#skipnavigation" title="Jump to main content. Please activate this if you would like to skip the navigation and jump directly to the main content."></a><a href="http://www.hp.com" onclick="target = new Date().valueOf().toString(); if (window.open) window.open(\'http://www.hp.com\',target,\'resizable=yes,scrollbars=yes,menubar=yes,location=yes,toolbar=yes,status=yes\'); return false;" title="Go to HP corporate web site: external link">'},
    {:text=>'<img src="images/logo.gif" alt="Click this Hewlett-Packard logo to open a new browser window, which takes you to the external HP.com Web site." /></a>'},
    {:text=>'HP 9250C Digital Sender Series</title>', :model=>"9250C Digital Sender"},
    {:text=>'HP Color LaserJet'},
    {:text=>'hp 9200C Digital Sender</title>', :model=>"9200C Digital Sender"},
    {:text=>'hp LaserJet'}
]
passive do
        m=[]
	m << { :version=>@headers['server'].scan(/HP-ChaiServer\/([\d\.]+)/) } if @headers['server'] =~ /HP-ChaiServer\/([\d\.]+)/
	m << { :version=>@headers['server'].scan(/HP-ChaiSOE\/([\d\.]+)/) } if @headers['server'] =~ /HP-ChaiSOE\/([\d\.]+)/
	m << { :name=>"HTTP Location Header" } if @headers['location'] =~ /hp\/device\/this.LCDispatcher/
        m
end
end
