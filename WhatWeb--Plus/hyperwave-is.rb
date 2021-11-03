Plugin.define do
name "Hyperwave-IS"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

  "Andrew Horton", 

]
version "0.2"
description "Hyperwave Information Server"
website "http://www.hyperwave.com/"
matches [
    {:regexp=>/^Hyperwave-/, :search=>"headers[server]"},
    {:search=>"headers", :text=>'Hyperwave'},
    {:version=>/^Hyperwave-IS\/([^\s]+)$/, :search=>"headers[server]"},
    {:version=>/^Hyperwave-Information-Server\/([^\s]+)$/, :search=>"headers[server]"}
]
end
