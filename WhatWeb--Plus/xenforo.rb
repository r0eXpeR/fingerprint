Plugin.define do
name "XenForo"
authors [
  "Mateusz Golewski",

  "Bhavin Senjaliya <bhavin.senjaliya@gmail.com>", 

  "Andrew Horton", 

]
version "0.3"
description "Commercial community forum developed in PHP."
website "https://xenforo.com/"
matches [
    {:name=>"HTML id element", :regex=>/<html[^>]+id="XenForo"/},
    {:regexp=>/(?:jQuery\.extend\(true, XenForo|<a[^>]+>Forum software by XenForo™|<!--XF:branding|<html[^>]+id="XenForo")/},
    {:regexp=>/<html id="XF/},
    {:search=>"headers[set-cookie]", :regexp=>/^xf_session/, :name=>"xf_session cookie"}
]
end
