Plugin.define do
name "Calypso-ION-8r-Device"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "The ION-8r is a networked device controller with 8 individual contact relays and a single RS-232 port. Like all Calypso controllers, the ION-8r uses an on-board event database to speed and ease control logic definition, with little training and no code-writing. - Homepage [offline]: http://www.calypsosystems.com/"
matches [
    {:certainty=>75, :text=>'<title>Calypso ION-8r Device</title>'},
    {:search=>"headers", :text=>'Calypso ION8r Device'},
    {:search=>"headers[www-authenticate]", :text=>"Calypso ION8r Device"},
    {:text=>'/A/cfg/entercmd.stm'},
    {:text=>'<li><a href="/A/cfg/entercmd.stm">Enter Command</a></li>'},
    {:text=>'Calypso ION-8r Device'}
]
end
