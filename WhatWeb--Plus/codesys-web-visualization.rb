Plugin.define do
name "CoDeSys-Web-Visualization"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "CoDeSys can create XML descriptions of the visualization objects and download them to the PLC. There a Web-Server will provide the PLC data in XML format too and thus can create a continuously updated visualization which can be opened in the Web Browser of any computer which is connected via Internet, independently from the target platform (e.g. useful for remote maintenance purposes)."
website "http://www.3s-software.com/index.shtml?en_CoDeSys_WebVisu"
dorks [
'inurl:"plc/webvisu.htm" intitle:"CoDeSys WebVisualization"'
]
matches [
    {:search=>"headers", :text=>'WAGO_Webs'},
    {:text=>'<APPLET CODEBASE=. CODE=webvisu/WebVisu.class name="WebVisu" width="100%" height="100%" id="webvisuapplet">'},
    {:text=>'<APPLET CODEBASE=. CODE=webvisu/WebVisu.class name="WebVisu" width="99%" height="99%" id="webvisuapplet">'},
    {:text=>'<TITLE>CoDeSys WebVisualization</TITLE>'},
    {:text=>'<param name="archive" value="webvisu.jar,minml.jar">'},
    {:text=>'CoDeSys WebVisualization'}
]
passive do
	m=[]
	if @headers["location"] =~ /\/plc\/webvisu\.htm$/
		m << { :name=>"Redirect location" }
	end
	if @headers["server"] =~ /^WAGO_Webs$/
		m << { :name=>"HTTP Server Header" }
	end
	m
end
end
