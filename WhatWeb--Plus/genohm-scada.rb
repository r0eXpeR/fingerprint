Plugin.define do
name "GenOHM-SCADA"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "GenOHM SCADA is a Visualization and Control system for KNX/EIB networks."
website "http://corp.genohm.eu/index.php?option=com_content&view=article&id=39&Itemid=34"
dorks [
'intitle:"GenOHM Scada Launcher"'
]
matches [
    {:text=>'/cgi-bin/scada-vis/'},
    {:text=>'<title>GenOHM Scada Launcher</title>'},
    {:text=>'GenOHM Scada Launcher'},
    {:url=>"/cgi-bin/scada-vis/index.cgi", :version=>/var LMVersion = '([^\s^']+)';/},
    {:url=>"/favicon.ico", :md5=>"311df4268641ef7c01f43a077ff2c9fe"}
]
end
