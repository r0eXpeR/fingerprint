Plugin.define do
name "Intermec-EasyLAN"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "Intermec EasyLAN web interface"
website "http://www.intermec.com"
matches [
    {:search=>"headers", :text=>'XCD WebAdmin'},
    {:text=>'COLOR="BLACK" SIZE="5">Intermec EasyLAN'},
    {:url=>"/imec.jpg", :md5=>"d0204544f2a9ec61184efb62d0b51515"}
]
passive do
	m=[]
	if @headers["server"] =~ /^XCD WebAdmin$/ and @body =~ /Server Access Password: <\/B><INPUT TYPE="PASSWORD" SIZE="16" MAXLENGTH="16" NAME="ZZ_pwd">/ and @body =~ /<HTML><HEAD><TITLE>EasyLAN Web<\/TITLE><\/HEAD>/
		m << { :model=>@body.scan(/<TD><FONT COLOR="BLACK" SIZE="5">Intermec EasyLAN ([a-z\d]{3,4})<\/FONT><\/TD>/) } if @body =~ /<TD><FONT COLOR="BLACK" SIZE="5">Intermec EasyLAN ([a-z\d]{3,4})<\/FONT><\/TD>/
		m << { :model=>"Pony" } if @body =~ /<TD><FONT COLOR="BLACK" SIZE="5">XCD Pony<\/FONT><\/TD>/
	end
	m
end
end
