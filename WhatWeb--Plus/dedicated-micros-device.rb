Plugin.define do
name "Dedicated-Micros-Device"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "Dedicated Micros is the world's leading manufacturer of CCTV solutions from megapixel IP cameras to high performance high definition recording, transmission and decoding systems."
website "http://www.dedicatedmicros.com/"
matches [
    {:search=>"headers", :text=>'ADH-Web'},
    {:search=>"headers[server]", :regexp=>/^ADH-Web$/},
    {:url=>"/common/script_variables.js.shtml", :model=>/^var SYSTEM_LOGO = "([^"]+)";[\s]*$/},
    {:url=>"/gui/title.shtml", :model=>/^				var product = '([^']+)';[\s]*$/},
    {:url=>"/webpages/index.shtml", :text=>"	<title>DVIP</title>", :model=>"DVIP"}
]
end
