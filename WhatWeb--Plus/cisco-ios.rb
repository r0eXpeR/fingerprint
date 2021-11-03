Plugin.define do
name "Cisco-IOS"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

  "Andrew Horton", 

]
version "0.3"
description "Cisco IOS (originally Internetwork Operating System) is the software used on the vast majority of Cisco Systems routers and current Cisco network switches. (Earlier switches ran CatOS.) IOS is a package of routing, switching, internetworking and telecommunications functions tightly integrated with a multitasking operating system. - More info: http://en.wikipedia.org/wiki/Cisco_IOS"
matches [
{ :model=>/\ssdmconfig-([^\.]+).cfg/}, 
{ :model=>/\sc(\d+)(nm)?[^\-]*-\S+-mz\S+\.bin/}, 
{ :string=>"Dir",     :regexp=>/<input type="hidden" name="DIRINFO" value="\s+Directory of archive:\// },
{ :string=>"DirFail", :regexp=>/<input type="hidden" name="DIRINFO" value="\s*(Command authorization failed|% Authorization failed)/ },
{ :search=>"headers[server]", :regexp=>/^cisco-IOS/ },
]
end
