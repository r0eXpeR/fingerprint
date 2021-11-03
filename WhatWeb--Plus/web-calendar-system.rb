Plugin.define do
name "Web-Calendar-System"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.2"
description "web calendar system"
matches [
{ :certainty=>25, :ghdb=>'+intitle:"Web Calendar system v" inurl:.asp' },
{ :version=>/<TITLE>Web Calendar system v ([\.\d]+)<\/TITLE>/ },
]
end
