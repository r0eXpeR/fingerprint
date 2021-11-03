Plugin.define do
name "CAStor"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "CAStor is object storage software designed to store unstructured data also referred to as fixed content or reference information. This includes documents, e-mail, images, audio, video, voice mails, ring tones, and medical images and records."
website "http://www.caringo.com/"
dorks [
'intitle:"CAStor Node Status" "CAStor Node IP"'
]
matches [
    {:search=>"headers", :text=>'CAStor'},
    {:search=>"headers[castor-system-totalgbavailable]", :regexp=>/^[\d]+$/},
    {:search=>"headers[castor-system-totalgbcapacity]", :regexp=>/^[\d]+$/},
    {:search=>"headers[server]", :module=>/^CAStor (Reverse Proxy .+)$/},
    {:search=>"headers[server]", :version=>/^CAStor Cluster\/([^\s]+)$/},
    {:url=>"/", :text=>'<html><head><title>CAStor Node Status</title></head><body><h2>CAStor Node IP'}
]
end
