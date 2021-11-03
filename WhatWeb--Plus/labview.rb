Plugin.define do
name "LabVIEW"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

  "Andrew Horton", 

]
version "0.2"
description "LabVIEW is a graphical programming environment used by millions of engineers and scientists to develop sophisticated measurement, test, and control systems using intuitive graphical icons and wires that resemble a flowchart."
website "http://www.ni.com/labview/"
matches [
    {:search=>'headers[server]',:offset=>1, :regexp=>/LabVIEW(?:.([\d\.]+))?/},
    {:version=>/^LabVIEW\/([\d\.]+)$/, :search=>"headers[server]"}
]
end
