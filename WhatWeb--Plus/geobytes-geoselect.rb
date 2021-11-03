Plugin.define do
name "Geobytes-GeoSelect"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

  "Andrew Horton", 

]
version "0.2"
description "GeoSelect is a Microsoft IIS module. GeoSelect gives you easy access to numerous features that you can use to impress your clients.  From geographically customized menus through to log file analysis, your clients will be impressed when they see their web site dynamically transformed to the viewer's location."
website "http://www.geobytes.com/GeoSelect.htm"
matches [
    {:regexp=>/Geobytes-GeoSelect/, :search=>"headers[server]"},
    {:search=>"headers", :text=>'Geobytes-GeoSelect'},
    {:version=>/Geobytes-GeoSelect\/([\d\.]+)/, :search=>"headers[server]"}
]
end
