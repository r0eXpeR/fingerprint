Plugin.define do
name "Daisy"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

  "Andrew Horton", 

]
version "0.2"
description "Daisy is a content management system that offers rich out-of-the-box functionality combined with solid foundations for extensibility and integration. Daisy consists of two main components: a stand-alone repository server accessible through HTTP/XML (using the ReST style of WebServices) and/or a high-level (remote) Java API, and an extensive editing and publishing front-end web application running inside Apache Cocoon."
website "http://daisycms.org/daisy/about.html"
matches [
    {:regexp=>//, :search=>"headers[x-daisy-version]"},
    {:search=>"headers", :text=>'x-daisy-version'},
    {:string=>/^[^\s]+ \(build: ([^\s]+)/, :search=>"headers[x-daisy-version]"},
    {:version=>/^([^\s]+) \(build: [^\s]+/, :search=>"headers[x-daisy-version]"}
]
end
