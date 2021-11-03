Plugin.define do
name "iLO"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.2"
description "Integrated Lights-Out, or iLO, is an embedded server management technology exclusive to Hewlett-Packard but similar in functionality to the Lights out management (LOM) technology of other vendors."
website "http://en.wikipedia.org/wiki/HP_Integrated_Lights-Out"
dorks [
'"select \'Yes\' to accept the certificate to access Integrated Lights-Out."'
]
matches [
    {:regexp=>/<title>[\s]+HP Integrated Lights-Out( [\d])?[\s]+<\/title>/},
    {:text=>'<a href="http://www.hp.com/go/ilo" target="new"><IMG src="iLO2_blue.jpg" height=57 border=0 alt="Integrated Lights-Out"></a>', :version=>"2.x"},
    {:text=>'<a href="http://www.hp.com/servers/lights-out" target="new"><IMG height=60 src="ilo.gif" width=150 border=0 alt="Integrated Lights-Out"></a>'},
    {:text=>'Derivative Work - 1996, 1998-2000 Copyright 1996, 1998-2000 The Regents of the University of California<br>'},
    {:text=>'HP Integrated Lights-Out'},
    {:text=>'document.title="Integrated Lights Out 2: "+serverName;', :version=>"2.x"},
    {:text=>'document.title="Integrated Lights Out: "+serverName;'},
    {:text=>'href="http://www.hp.com/go/ilo'},
    {:version=>/(\*|&copy;)[\s]{1,2}Copyright ([\d]{4}) Hewlett-Packard Development Company, L\.P\./, :offset=>1},
    {:version=>/(\*|&copy;)[\s]{1,2}Copyright 2002,[\s]?([\d]{4}) Hewlett-Packard Development Company, L\.P\./, :offset=>1}
]
passive do
	m=[]
	if @body =~ /document\.title="Integrated Lights Out( [\d])?: "/
		m << { :string=>@body.scan(/^nicName="([^"^\s]+)";/) } if @body =~ /^nicName="([^"^\s]+)";/
	end
	m
end
end
