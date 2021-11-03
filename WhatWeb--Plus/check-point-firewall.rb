Plugin.define do
name "Check-Point-Firewall"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "Check Point Firewall"
website "http://www.checkpoint.com/"
matches [
{ :search=>"headers[location]", :regexp=>/\/fwauthredirect[\d]{1,3}\.[\d]{1,3}\.[\d]{1,3}\.[\d]{1,3}id[\d]+$/ },
{ :status=>401, :string=>/FW-1 at ([^\s]+): Unauthorized to access the document\./ },
]
end
