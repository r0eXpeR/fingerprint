Plugin.define do
name "Biromsoft-WebCam"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "Biromsoft webcam web interface - http://www.biromsoft.com/"
dorks [
'intitle:"Biromsoft WebCam" -download -serial -crack -the -a'
]
matches [
    {:regexp=>/<area shape="rect" coords="[\d\-,]+" href="http:\/\/www.biromsoft.com" alt="Visit BiromSoft " title="Visit BiromSoft ">/},
    {:text=>'<area shape="rect" coords="22,26,151,102" href="http://www.biromsoft.com">'},
    {:text=>'<title>Biromsoft WebCam</title>', :certainty=>75},
    {:text=>'Biromsoft WebCam'}
]
end
