Plugin.define do
name "HighWire-Press"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "HighWire Press hosting"
website "http://highwire.stanford.edu/about/"
matches [
    {:search=>"headers", :text=>'x-firenze-processing'},
    {:search=>"headers", :text=>'x-highwire-sessionid'},
    {:search=>"headers[x-firenze-processing-time]", :regexp=>/^[\d\.]+$/},
    {:search=>"headers[x-firenze-processing-tims]", :regexp=>/^detect-robot:/},
    {:search=>"headers[x-highwire-sessionid]", :regexp=>/^.+$/}
]
end
