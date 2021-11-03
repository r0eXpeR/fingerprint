Plugin.define do
name "Axis-PrintServer"
authors [
  "Andrew Horton",

]
version "0.1"
description "Axis 540/542 Network Print Server"
website "http://www.axis.com/products/axis_540p/index.htm"
dorks [
'"Welcome to AXIS 540/542 Network Print Server"'
]
matches [
    {:text=>'/cgi-bin/prodhelp?prod='},
    {:text=>'<h2>Welcome to AXIS 540/542 Network Print Server</h2>'},
    {:text=>'psb_printjobs.gif'},
    {:url=>'/', :model=>/<h2>Welcome to AXIS.*<hr><p>Name: ([\S]+)<br>/m},
    {:url=>'/', :version=>/<h2>Welcome to AXIS.*Software version: ([0-9\.]+)<br>/m}
]
end
