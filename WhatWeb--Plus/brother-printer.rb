Plugin.define do
name "Brother-Printer"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

  "Andrew Horton", 

]
version "0.4"
description "Brother printer web interface"
website "http://www.brother.com/"
dorks [
'intitle:"Brother" intext:"View Configuration" intext:"Brother Industries, Ltd."'
]
matches [
    {:certainty=>25, :search=>"headers[server]", :version=>/^[Dd]ebut\/([\d\.]+)$/},
    {:model=>/<TITLE>[\s]*Brother ([\w-]+) series/},
    {:text=>'<FRAME SRC="/printer/inc_head.html" NAME="header" NORESIZE SCROLLING="no">'},
    {:text=>'<FRAME SRC="/printer/inc_head.html'},
    {:text=>'<IMG src="/common/image/HL4040CDN.gif" border=0>', :model=>"HL-4040CDN"},
    {:text=>'<IMG src="/common/image/HL4040CN'},
    {:text=>'<IMG src="/common/image/HL4040CN.gif" border=0>', :model=>"HL-4040CN"},
    {:text=>'<IMG src="/common/image/HL4050CDN.gif" border=0>', :model=>"HL-4050CDN"},
    {:text=>'<IMG src="/common/image/HL4070CDW.gif" border=0>', :model=>"HL-4070CDW"}
]
end
