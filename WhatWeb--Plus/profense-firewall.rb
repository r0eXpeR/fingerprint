Plugin.define do
name "Profense-Firewall"
authors [
  "Aung Khant <http://yehg.net/>", 

]
version "0.1"
description "Profense Web Application Firewall -  http://www.armorlogic.com/profense_overview.html"
passive do
    m = []   
    m << {:name=>"PLBSID cookie" } if @headers["set-cookie"] =~ /PLBSID=/i  
    m << {:name=>"server header" } if @headers["server"] =~ /Profense/i  
    m
end
end
