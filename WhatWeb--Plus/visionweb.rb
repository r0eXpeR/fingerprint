Plugin.define do
name "VisionWEB"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "VisionWEB - video server web interface - Homepage [offline]: http://www.cieffe.com/"
dorks [
'intitle:"VisionWEB" "Insignis Technologies"'
]
matches [
{ :certainty=>75, :search=>"headers[server]", :regexp=>/^IWeb\/([^\s]+)/ },
{ :version=>/VarPageTitle="Proxima\d? DVMS VisionWEB v([^\s^"]+)";/ },
{ :text=>'<b>CIEFFE srl</b> - "We power Your eyes"<br' },
{ :string=>/<meta name="COPYRIGHT" content="&copy; 2001-(2[\d]{3}) Insignis Technologies"/ },
]
end
