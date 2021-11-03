Plugin.define do
name "IQeye-Netcam"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.3"
description "IQeye netcam web interface"
matches [
    {:model=>/<title>IQeye([^:]+): Live Images[^<]*<\/title>/i },
    {:text=>'IQEYE: Live Images'},
    {:text=>'content="Brian Lau, IQinVision'},
    {:text=>'loc = "iqeyevid.html'}
]
end
