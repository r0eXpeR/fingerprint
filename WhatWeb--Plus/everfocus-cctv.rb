Plugin.define do
name "EverFocus-CCTV"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "EverFoxus CCTV router web interface"
website "http://www.everfocus.com/products.cfm"
matches [
    {:regexp=>/^	If the page is not redirected, please click <a href="\/login\.html\?[\d]{4}&1">here<\/a><br>$/},
    {:search=>"headers", :text=>'http server/everfocus'},
    {:text=>'<!--mei20071101 input type="image" name="recMode" style="visibility:hidden" src="stoprec.gif" onclick="changeRecordMode()"-->'}
]
passive do
	m=[]
	if @headers["server"] =~ /^http server\/everfocus$/
		m << { :name=>"HTTP Server Header" }
		if @body =~ /<!--Version [\d]{8} for [\d\.]+ EF -->/
			m << { :version=>@body.scan(/^<!--Version [\d]{8} for ([\d\.]+) EF -->/).flatten }
			m << { :firmware=>@body.scan(/^<!--Version ([\d]{8}) for [\d\.]+ EF -->/).flatten }
		end
		m << { :module=>"ERViewer.ocx/"+@body.scan(/var g_sVersion = "([\d\.]+)"/).flatten } if @body =~ /var g_sVersion = "[\d\.]+"/
	end
	m
end
end
