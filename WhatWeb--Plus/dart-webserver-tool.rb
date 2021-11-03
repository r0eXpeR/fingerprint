Plugin.define do
name "Dart-WebServer-Tool"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

  "Andrew Horton", 

]
version "0.2"
description "Build web applications in any familiar software development environment. Use WebServer for ActiveX to add web-based access to traditional compiled applications"
website "http://www.dart.com/ptwbs.aspx"
matches [
    {:search=>"headers", :text=>'Dart WebServer Tool'},
    {:search=>"headers[server]", :version=>/^Dart WebServer Tool\/([\d\.]+)$/}
]
end
