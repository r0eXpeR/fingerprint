Plugin.define do
name "Xitami"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "Xitami - Fast, small, secure, portable web server. The Xitami product line stretches back to 1996. X5 is built using iMatix's current Base2 technology for multithreading applications."
website "http://www.xitami.com/"
matches [
    {:search=>"headers[server]", :regexp=>/^Xitami$/},
    {:search=>"headers[server]", :version=>/^Xitami\/([^\s]+)$/},
    {:search=>'headers[server]', :regexp=>/Xitami(?:.([\d.]+))?/,:offset=>1  }
]
end
