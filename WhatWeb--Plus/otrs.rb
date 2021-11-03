Plugin.define do
name "Open-Source-Ticket-Request-System"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.2"
description "OTRS is an Open source Ticket Request System (also well known as trouble ticket system) with many features to manage customer telephone calls and e-mails."
website "http://otrs.org/"
dorks [
'"Powered by OTRS" inurl:customer.pl'
]
matches [
    {:ghdb=>'"Powered by OTRS" inurl:customer.pl', :certainty=>75},
    {:offset=>1, :search=>'headers[x-powered-by]', :regexp=>/OTRS ([\d.]+)/},
    {:regexp=>/<!--\s+OTRS: Copyright/},
    {:regexp=>/^.otrs-web.js./, :search=>'body'},
    {:text=>'<title>OTRS  :: Login</title>'},
    {:version=>/Powered by <a href="http:\/\/otrs.org[\/]*" class="small">OTRS ([^<]+)<\/a>/}
]
end
