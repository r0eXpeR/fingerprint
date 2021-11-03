Plugin.define do
name "AMR-WinControl"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

  "Andrew Horton", 

]
version "0.2"
description "This plugin identifies AMR-WinControl server"
website "http://amr-wincontrol.software.informer.com/"
matches [
    {:search=>"headers", :text=>'AMR_WinControl'},
    {:search=>"headers[server]", :version=>/AMR_WinControl[_0-9]*\/([\d\.]+)/}
]
end
