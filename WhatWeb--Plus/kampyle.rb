Plugin.define do
name "Kampyle"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "Feedback form solutions for websites & software. [JavaScript]"
website "http://www.kampyle.com/"
matches [
    {:regexp=>/<script [^>]*src=["']http:\/\/cf\.kampyle\.com\/k_button\.js["'][^>]*>/i},
    {:regexp=>/cf\.kampyle\.com.k_button\.js/, :search=>'body'},
    {:text=>'<!--End Kampyle Feedback Form Button-->'},
    {:text=>'<!--Start Kampyle Feedback Form Button-->'},
    {:text=>'Start Kampyle Feedback Form Button'},
    {:text=>'http://cf.kampyle.com/k_button.js'}
]
end
