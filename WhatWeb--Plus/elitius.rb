Plugin.define do
name "eLitius"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.2"
description "eLitius is a free software package that allows a person to easily create and manage his own Affiliate Program, recruit affiliates, track visitors and sales."
website "http://www.elitius.com/"
matches [
    {:text=>'<meta name="description" content="eLitius Affiliate Management Software" />'},
    {:text=>'content="eLitius'},
    {:text=>'target="_blank" title="Affiliate'},
    {:version=>/[\s]+Powered by <a href="http:\/\/www.elitius.com\/" target="_blank" title="Affiliate [^>]{8,10} Software">eLitius<\/a> Version ([\d\.]+)<br \/>/}
]
end
