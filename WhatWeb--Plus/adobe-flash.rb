Plugin.define do
name "Adobe-Flash"
authors [
  "Caleb Anderson",

  "Brendan Coles <bcoles@gmail.com>", 

  "Andrew Horton", 

]
version "0.3"
description "This plugin identifies instances of embedded adobe flash files."
website "https://get.adobe.com/flashplayer/"
dorks [
'filetype:swf'
]
matches [
    {:regexp=>/<embed[^>]+src[\s]*=[\s]*["']?[^\s^'^"^>]+/i},
    {:regexp=>/<object[^>]+application\/x-shockwave-flash[^>]+>/i},
    {:regexp=>/\.embedSWF[\s]*\([\s]*["']?[^'^"]+/},
    {:regexp=>/new[\s]+FlashObject[\s]*\([\s]*['"]?[^'^"]+/},
    {:regexp=>/new[\s]+SWFObject[\s]*\([\s]*['"]?[^'^"]+/},
    {:text=>'/go/getflashplayer'},
    {:text=>'/x-shockwave-flash'},
    {:text=>'embedswf'}
]
end
