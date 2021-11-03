Plugin.define do
name "Varnish"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

  "Bhavin Senjaliya <bhavin.senjaliya@gmail.com>", 

]
version "0.2"
description "Varnish is an HTTP accelerator written in C designed for content-heavy dynamic web sites. In contrast to other HTTP accelerators, such as Squid, which began life as a client-side cache, or Apache, which is primarily an origin server, Varnish was designed from the ground up as an HTTP accelerator."
website "http://www.varnish-cache.org/"
matches [
    {:regexp=>/varnish(?: \(Varnish.([\d.]+)\))?/,:offset=>1, :search=>'headers[via]'},
    {:search=>"headers", :text=>'X-Varnish'},
    {:search=>"headers[server]", :regexp=>/^Varnish$/, :name=>"Varnish Server Header"},
    {:search=>"headers[set-cookie]", :regexp=>/ENUnique/, :name=>"ENUnique cookie"},
    {:search=>"headers[x-varnish]", :regexp=>//, :name=>"x-varnish header"}
]
end
