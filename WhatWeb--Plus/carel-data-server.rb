Plugin.define do
name "Carel-Data-Server"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

  "Andrew Horton", 

]
version "0.2"
description "Pl@ntVisor is a communication data server distributed by CAREL Italy. It is now obsolete and replaced by Pl@ntVisorPRO"
matches [
    {:search=>"headers", :text=>'CarelDataServer'},
    {:text=>'<img style="position:absolute;left:0;top:0;" src=plv_primoLW.jpg zwidth="100%" zheight="100%">'},
    {:text=>'<script type="text/javascript" language="JavaScript" src="/MPwebCoreFn.js"></script>'},
    {:text=>'src="/MPwebCoreFn.js'},
    {:url=>"/plv_primoLW.jpg", :md5=>"df1e885e87f6ab393a90b908b6ce5dc4"},
    {:version=>/^CarelDataServer\/([\d\.]{1,10})/, :search=>"headers[server]"}
]
passive do
	m=[]
	if @headers["server"] =~ /^CarelDataServer\/[\d\.]{1,10}/
		accounts = @body.scan(/<select name='LoginName'>(.*)<\/select>/m).flatten if @body =~ /<select name='LoginName'>(.*)<\/select>/m
		m << { :account=>accounts.to_s.scan(/<option value="([^"]+)"[^>]*>[^<]+<\/option>/).flatten } if accounts.to_s =~ /<option value="([^"]+)"[^>]*>[^<]+<\/option>/
	end
	m
end
end
