Plugin.define do
name "BinarySec-Firewall"
authors [
  "Aung Khant <http://yehg.net/>", 

  "Andrew Horton", 

]
version "0.3"
description "BinarySec Web Application Firewall - http://www.binarysec.com"
matches [
    {:name=>"X-BinarySEC-NoCache header", :text=>"", :search=>"headers[x-binarysec-nocache]"},
    {:name=>"X-BinarySEC-NoCache header", :version=>/BinarySEC\/(\d{1,3}\.\d{1,4}\.\d{1,4})/, :search=>"headers[server]"},
    {:name=>"X-BinarySEC-Via header", :text=>"", :search=>"headers[x-binarysec-via]"},
    {:search=>"headers", :text=>'X-BinarySEC'}
]
end
