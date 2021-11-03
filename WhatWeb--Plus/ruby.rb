Plugin.define do
name "Ruby"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

  "Andrew Horton", 

]
version "0.3"
description "Ruby is a dynamic, open source programming language with a focus on simplicity and productivity. It has an elegant syntax that is natural to read and easy to write."
website "http://www.ruby-lang.org/"
matches [
    {:regexp=>/Ruby/, :search=>"headers[server]"},
    {:regexp=>/^WEBrick/, :search=>"headers[server]"},
    {:search=>"headers", :text=>'Mongrel'},
    {:search=>"headers", :text=>'Phusion'},
    {:search=>"headers", :text=>'WEBrick'},
    {:search=>"headers", :text=>'X-Rack-Cache'},
    {:search=>"headers", :text=>'ruby'},
    {:search=>'headers[server]', :regexp=>/(?:Mongrel|WEBrick|Ruby)/},
    {:version=>/Ruby\/([^\s^\/^\(]+)/, :search=>"headers[server]"},
    {:version=>/^(WEBrick\/[\d\.]+) \(Ruby\/[\d\.]+\/[\d]{4}-[\d]{2}-[\d]{2}\)/, :search=>"headers[server]"},
    {:version=>/^WEBrick\/[\d\.]+ \(Ruby\/([\d\.]+)\/[\d]{4}-[\d]{2}-[\d]{2}\)/, :search=>"headers[server]"}
]
end
