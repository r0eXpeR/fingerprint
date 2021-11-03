Plugin.define do
name "Caudium"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

  "Andrew Horton", 

]
version "0.2"
description "Caudium is the name of a GPL-ed (free for commercial and personal use) web server written in Pike and in C. It is originally based on the Roxen Challenger 1.3 code base."
website "http://www.caudium.net/"
matches [
    {:module=>/(Pike v[\d\.]+ release [\d]+)$/,
  :search=>"headers[x-got-fish]"},
    {:name=>"HTTP Server Header",
  :regexp=>/Caudium/,
  :search=>"headers[server]"},
    {:search=>"headers", :text=>'Caudium'},
    {:search=>"headers", :text=>'X-Got-Fish: Pike'},
    {:version=>/Caudium\/([\d\.]+)/,
  :search=>"headers[server]"}
]
end
