Plugin.define do
name "Siemens-SpeedStream-Router"
authors [
  "Andrew Horton",

  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.3"
description "Siemens SpeedStream 4200 and 6520 modems are only sold in Australia through selected internet providers, which include them in their internet access packs. - More Info: http://bc.whirlpool.net.au/bc/hardware/?action=h_view&model_id=279"
dorks [
'intitle:"SpeedStream Router Management Interface" inurl:title.htm'
]
matches [
{:text=>'<TITLE>SpeedStream Router Management Interface</TITLE>'},
{:certainty=>50, :regexp=>/<!-- Copyright(C) [0-9]+ Siemens Subscriber Networks -->/},
{:certainty=>75, :text=>'<FRAME SRC="pflogin.htm" NAME="rightFrame"'},
{ :url=>"/summary.htm", :model=>/<B>System Type:<\/B><\/TD><TD>SpeedStream ([^\-]+-Series)<\/TD>/ },
{ :url=>"/summary.htm", :string=>/<TD ALIGN="right" WIDTH="150"><B>MAC Address:<\/B><\/TD><TD>([\dA-F]{2}:[\dA-F]{2}:[\dA-F]{2}:[\dA-F]{2}:[\dA-F]{2}:[\dA-F]{2})<\/TD><\/TR><\/TABLE>/ },
]
end
