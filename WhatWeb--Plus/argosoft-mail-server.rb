Plugin.define do
name "ArGoSoft-Mail-Server"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

  "Andrew Horton", 

]
version "0.5"
description "ArGoSoft-Mail-Server web interface"
website "http://www.argosoft.com/"
dorks [
'intitle:"adding new user" "ArGoSoft Mail Server" inurl:addnewuser -inurl',
'"adding new user" inurl:addnewuser -"there are no domains"'
]
matches [
    {:ghdb=>'intitle:"adding new user" "ArGoSoft Mail Server" inurl:addnewuser', :certainty=>75},
    {:search=>"headers", :text=>'ArGoSoft Mail Server'},
    {:search=>"headers[server]", :version=>/ArGoSoft Mail Server Pro for WinNT\/2000, Version [\d\.]+ \(([\d\.]+)\)/, :os=>"Windows NT/2000"},
    {:search=>"headers[server]", :version=>/ArGoSoft Mail Server Pro for WinNT\/2000\/XP, Version [\d\.]+ \(([\d\.]+)\)/, :os=>"Windows NT/2000/XP"},
    {:text=>'ArGoSoft Mail Server Plus for'},
    {:version=>/ArGoSoft Mail Server Pro for WinNT\/2000, Version [\d\.]+ \(([\d\.]+)\)<\/p>/, :os=>"Windows NT/2000"},
    {:version=>/ArGoSoft Mail Server Pro for WinNT\/2000\/XP, Version [\d\.]+ \(([\d\.]+)\)<\/p>/, :os=>"Windows NT/2000/XP"}
]
end
