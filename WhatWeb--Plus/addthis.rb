Plugin.define do
name "AddThis"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "AddThis is a free way to boost traffic back to your site by making it easier for visitors to share your content."
website "http://www.addthis.com/"
matches [
    {:regexp=>/<script [^>]*src=["|'][^>]*addthis\.com\/js/i },
    {:regexp=>/addthis\.com.js./, :search=>'body'},
    {:text=>'addthis.com/js/'}
]
end
