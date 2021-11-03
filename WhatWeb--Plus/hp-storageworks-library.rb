Plugin.define do
name "HP-StorageWorks-Library"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "HP StorageWorks Library and Tape Tools (L&TT) is a diagnostic tool for all of HP's tape storage and magneto-optical storage products."
website "http://h18006.www1.hp.com/products/storageworks/ltt/index.html"
dorks [
' intitle:"HP StorageWorks" intitle:"Tape Library Webpages" "Command View MSL" "Account Type"'
]
matches [
    {:text=>'HP StorageWorks'},
    {:url=>"/index.htm", :md5=>"63a4689c098daa89f62cc13069571204"},
    {:url=>'/login.ssi', :text=>'<TD class="mastheadIcon"><img src="signin_logo.gif" border="0" alt="HP"></TD>'},
    {:url=>'/login.ssi', :version=>/<TITLE>HP StorageWorks (MSL[^\s]+) Tape Library Webpages<\/TITLE>/}
]
end
