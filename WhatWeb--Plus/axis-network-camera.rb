Plugin.define do
name "Axis-Network-Camera"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.2"
description "Axis network camera"
website "http://www.axis.com/"
dorks [
'allintitle: Axis 2.10 OR 2.12 OR 2.30 OR 2.31 OR 2.32 OR 2.33 OR 2.34 OR 2.40 OR 2.42 OR 2.43 "Network Camera"',
'intitle:"Live View / . AXIS" | inurl:view/view.shtml OR inurl:view/indexFrame.shtml | intitle:"MJPG Live Demo" | "intext:Select preset position"',
'inurl:indexFrame.shtml intitle:Axis -inurl'
]
matches [
    {:model=>/<TITLE>Axis ([0-9]+)[^<]*Network Camera[^<]*<\/TITLE>/i},
    {:model=>/<TITLE>Live View \/? - AXIS ([\da-z]+) [^<]*<\/TITLE>/i, :module=>"Live View"},
    {:model=>/<TITLE>Live View \/? - AXIS ([^<]*) Video Server<\/TITLE>/i, :module=>"Live View"},
    {:text=>'	<FRAME NAME="Trash" SRC="/view/trash.shtml" SCROLLING=NO MARGINGHEIGHT=0 MARGINWIDTH=0>'},
    {:text=>'      <FRAME NAME="Temp" SRC="/view/temp.shtml" SCROLLING=NO MARGINGHEIGHT=0 MARGINWIDTH=0>'},
    {:text=>'/incl/trash.shtml'},
    {:text=>'<FRAME NAME="WhatEver" SRC="/incl/whatever.shtml" SCROLLING=NO MARGINGHEIGHT=0 MARGINWIDTH=0>'},
    {:text=>'<TITLE>AXIS Video Server</TITLE>'},
    {:text=>'<img SRC="/pics/AxisLogo.gif" WIDTH="95" HEIGHT="40" BORDER="0" ALIGN="right" ALT="'},
    {:text=>'AXIS Video Server'},
    {:text=>'Your browser has JavaScript turned off.<br>For the user interface to work effectively, you must enable JavaScript in your browser and reload/refresh this page.'},
    {:version=>/<TITLE>Axis [0-9]+[^<]*Network Camera ([\d\.]+)<\/TITLE>/i},
    {:version=>/<TITLE>Live View \/? - AXIS [\da-z]+ [^<]*version ([\d\.]+)<\/TITLE>/i, :module=>"Live View"}
]
end
