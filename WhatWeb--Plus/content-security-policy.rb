Plugin.define do
name "Content-Security-Policy"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "Content Security Policy (CSP) - More Info: https://en.wikipedia.org/wiki/Content_Security_Policy"
matches [
    {:search=>"headers", :text=>'x-content-security-policy'},
    {:search=>"headers", :text=>'x-webkit-csp'},
    {:search=>"headers[x-content-security-policy]", :string=>/^(.*)$/},
    {:search=>"headers[x-webkit-csp]", :string=>/^(.*)$/}
]
end
