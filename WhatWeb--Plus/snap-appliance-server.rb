Plugin.define do
name "Snap-Appliance-Server"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

  "Andrew Horton", 

]
version "0.3"
description "Snap Appliance Server network attached storage (NAS)"
website "http://www.overlandstorage.com/"
dorks [
'intitle:"Snap Server" intitle:"Home" "Active Users"',
'inurl:config?Func=AboutSend'
]
matches [
{ :string=>/<TITLE>Snap Server ([^\s]+) \[[^\]]+\]<\/TITLE>/ },
{ :string=>/<HTML><HEAD><TITLE>About Snap Server ([^\s]+)<\/TITLE><\/HEAD>/ },
{ :text=>'<A HREF="http://www.snapappliance.com/support" TARGET="new"><IMG SRC="/config/resource/Tech.gif"  ALIGN="TOP" NATURALSIZEFLAG="3" BORDER="0" ALT=""></A> '},
{ :text=>'<A HREF="javascript:_ShowAbout()" onMouseOver="window.status=\'About Snap Server\'; return true;" onMouseOut="window.status=\'\'; return true;"><IMG SRC="/config/resource/About.gif"  ALIGN="TOP" NATURALSIZEFLAG="3" BORDER="0" ALT=""></A>' },
{ :text=>'   window.open("/config?Func=AboutSend","AboutSnap","toolbar=no,location=no,status=no,menubar=no,scrollbars=no,width=500,height=395,resizable=yes,dependent=yes"); '},
{ :regexp=>/^Snap Appliance/, :search=>"headers[server]" },
{ :regexp=>/^Quantum Corporation/, :search=>"headers[server]" },
{ :version=>/^Snap Appliances?, Inc\.\/([\d\.]+)$/, :search=>"headers[server]" },
{ :version=>/^Quantum Corporation\.\/([\d\.]+)$/, :search=>"headers[server]" },
]
end
