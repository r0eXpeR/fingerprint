Plugin.define do
name "MaxMind-GeoIP"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "MaxMind JavaScript is a service offered by MaxMind to return the country of your web visitors."
website "https://www.maxmind.com/app/javascript"
matches [
{ :regexp=>/<script type="(JavaScript|text\/javascript)" src="(http:\/\/)?j\.maxmind\.com\/app\/(country|geoip)\.js"><\/script>/ },
]
end
