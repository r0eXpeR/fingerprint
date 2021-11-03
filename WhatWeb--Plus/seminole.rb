Plugin.define do
name "Seminole"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "Seminole is an embeddable webserver toolkit designed to be non-invasive and easily retrofitted to existing applications, lightweight with low resource consumption, and highly reliable with proper standards compliance and security safeguards. "
website "http://gladesoft.com/products/seminole/"
matches [
    {:search=>"headers", :text=>'Server: Seminole'},
    {:search=>"headers[server]", :version=>/^Seminole\/([^\s]+)/}
]
end
