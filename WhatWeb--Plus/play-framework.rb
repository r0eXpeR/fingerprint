Plugin.define do
name "Play-Framework"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "Play is an open source web application framework, written in Java, which follows the model-view-controller architectural pattern. Build and deployment is all handled by Python scripts."
website "http://www.playframework.org/"
matches [
    {:search=>"headers", :text=>'Play! Framework'},
    {:search=>"headers[server]", :version=>/^Play! Framework;(\d[^\s^;]+;[^\s]+)$/}
]
end
