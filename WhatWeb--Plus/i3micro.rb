Plugin.define do
name "i3micro"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

  "Andrew Horton", 

]
version "0.2"
description "Tilgin was founded under the name i3 micro technology in 1997 and develops equipment for IPTV and VOIP solutions."
website "http://www.tilgin.com/"
matches [
    {:model=>'VRG', :url=>"/favicon.ico", :md5=>"e4a509e78afca846cd0e6c0672797de5"},
    {:model=>/^Digest realm="i3micro (V[A-Z]{2})", nonce/, :search=>"headers[www-authenticate]"},
    {:search=>"headers", :text=>'i3micro'}
]
end
