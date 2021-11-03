Plugin.define do
name "Huawei-Quidway-Switch"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "Huawei network switch - Quidway series"
website "http://www.huawei.com/products/datacomm/catalog.do?id=16"
passive do
	m=[]
	if @headers["server"] =~ /^Lanswitch - V([\d]{3})R([\d]{3}) HttpServer [\d\.]+$/
		m << { :version=>"#{$1}r#{$2}" }

	end
	m
end
matches [
    {:search=>"headers", :text=>'Lanswitch -'}
]
end
