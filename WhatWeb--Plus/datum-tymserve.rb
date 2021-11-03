Plugin.define do
name "Datum-TymServe"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

  "Andrew Horton", 

]
version "0.2"
description "GPS NTP Network Appliances make it easy to manage and monitor time synchronization through workstations, servers and routers, thus assuring the highest integrity throughout the network."
website "http://www.datum.com/"
matches [
    {:model=>/<H2 ALIGN=CENTER>Datum TymServe ([^\s]+) Virtual Viewpoint<\/H2><P><!-- This is a clock that shows the system time -->/},
    {:search=>"headers", :text=>'DATM'},
    {:search=>"headers[server]", :version=>/^DATM\/([\d\.]{1,3})$/},
    {:text=>'<H2 ALIGN=CENTER>Datum TymServe'}
]
end
