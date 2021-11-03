Plugin.define do
name "iTalkBB"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "iTalkBB is a local and long distance calling service provided by iTalk Broadband Corporation. It combines voice and internet networks to provide inbound and outbound long distance and local calling solutions."
website "http://www.italkbb.com/"
dorks [
'intitle:"V1" "welcome to phone settings" password -intitle'
]
matches [
{ :version=>/<HTML><HEAD><TITLE>[^>]+ V([\d\.]+)[\s]+<\/TITLE><STYLE type=text\/css>TD \{FONT-SIZE: 12px; LINE-HEIGHT: normal; TEXT-ALIGN: center\}<\/STYLE>/ },
{ :regexp=>/<P align=center><FONT size=5>welcome to phone settings<\/FONT><\/P><FORM action=\/a /i },
]
end
