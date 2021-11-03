Plugin.define do
name "LaserWash"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "PDQ - LaserWash - touchless car wash equipment."
website "http://www.pdqinc.com/car-wash-equipment/laserwash-360.asp"
matches [
{ :status=>401, :search=>"headers[www-authenticate]", :regexp=>/^Basic realm="PDQ Laserwash"$/ },
]
end
