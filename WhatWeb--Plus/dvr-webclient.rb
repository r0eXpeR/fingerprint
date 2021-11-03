Plugin.define do
name "DVR-WebClient"
authors [
  "Andrew Horton",

]
version "0.1"
description "DVR camera"
dorks [
'intitle:"DVR WebClient"'
]
matches [
    {:md5=>'8cf9f140f2ec4f5d3e533b5bc2b221ea'},
    {:text=>'259F9FDF-97EA-4C59-B957-5160CAB6884E'},
    {:text=>'DVR-WebClient'}
]
end
