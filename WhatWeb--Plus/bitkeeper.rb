Plugin.define do
name "BitKeeper"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

  "Andrew Horton", 

]
version "0.2"
description "BitKeeper Bug Manager - BitKeeper is paving the way for the next generation of SCM tools. As the leader in distributed configuration management and the culmination of a decade of innovation, BitKeeper has been shown to double the pace of software development."
website "http://bitkeeper.com/"
matches [
    {:search=>"headers", :text=>'bkhttp'},
    {:text=>'<A class="tab" HREF="/cgi-bin/query.cgi?.page=advquery">Advanced Query</A>'},
    {:version=>/^bkhttp\/([^\s]+)$/, :search=>"headers[server]"}
]
end
