Plugin.define do
name "AJA-Video-Converter"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "AJA digital video converter devices"
website "http://www.aja.com/en/products/convert/"
matches [
    {:text=>'<title>AJA Video - FS1 Admin: Main</title> <link href="/css/aja_fs1.css"', :model=>"FS1"},
    {:text=>'eParamID_SWVersion'},
    {:url=>"/json?action=get&configid=0&alt=json&paramid=eParamID_SysName", :string=>/\{"paramid":"839188480","name":"eParamID_SysName","value":"([^\"]+)"/}
]
end
