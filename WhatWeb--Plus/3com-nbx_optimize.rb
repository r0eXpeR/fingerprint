Plugin.define do
name "3COM-NBX"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "3COM NBX phone system. The NBX NetSet utility is a web interface in which you configure and manage the NBX system. NBX systems present the NBX NetSet utility through an embedded web server that is integrated in system software."
website "http://inpath.com/products/3com-nbx.html"
dorks [
'intitle:"NBX NetSet" "Version" "Created"'
]
matches [
    {:firmware=>/<TABLE BORDER="0" CELLPADDING="0" CELLSPACING="0"><TR><TD ALIGN="right" WIDTH="130" HEIGHT="75">[\s]+Version:(&nbsp;)?([^<]+)<BR>/, :offset=>1},
    {:firmware=>/<td colspan="3" class="splashVersionCol" valign='bottom'>[\s]+Version:&nbsp;([^<]+)<br \/>[\s]+Created:&nbsp;/},
    {:model=>/<span class="splashTitleNBX">NBX<SUP><span class="splashTitleNBXReg">&reg;<\/span><\/SUP><\/span>[\s]+<span class="splashTitlePlatform">(&nbsp;)?([^<]+)<\/span>/, :offset=>1 },
    {:text=>'<!-- (c) Copyright, 3Com Corporation or its subsidiaries, 2004.  All Rights Reserved. -->'},
    {:text=>'<!-- Gregory Brucato  4/22/98  NBX Corporation -->'},
    {:text=>'<HEAD><TITLE>NBX NetSet</TITLE>'},
    {:text=>'<head><title>NBX NetSet</title>'},
    {:text=>'<span class="splashTitleIPTelephony">&nbsp;3Com<SUP><span class="splashTitleNBXReg">&reg;</span></SUP> IP Telephony Solution</span>'},
    {:text=>'NBX NetSet'},
    {:text=>'splashTitleIPTelephony'},
    {:version=>/<META HTTP-EQUIV="sysObjectID" CONTENT="([\d\.]{20,30})">/}
]
passive do
	m=[]
	if @headers["server"] =~ /^Virata-EmWeb\/R6_0_3$/ and !@headers["alternates"].nil? and !@headers["tcn"].nil?
		m << { :name=>"HTTP Headers" }
	end
	m
end
end
