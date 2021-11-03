Plugin.define do
name "MyZone"
authors [
  "Andrew Horton",

]
version "0.1"
description "Mobile 3G WiFi Rrouter"
website "www.netcomm.com.au"
matches [
{:regexp=>/<title>MyZone<\/title>.*www\.netcomm\.com\.au/m}
]
end
