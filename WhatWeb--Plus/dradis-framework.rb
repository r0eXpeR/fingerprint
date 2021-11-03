Plugin.define do
name "Dradis-Framework"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "Dradis is an open source framework to enable effective information sharing, specially during security assessments. Dradis is a self-contained web application that provides a centralised repository of information to keep track of what has been done so far, and what is still ahead."
website "http://Dradisframework.org/"
dorks [
'intitle:"First Time User\'s Wizard - dradis" inurl:wizard'
]
matches [
    {:search=>"headers", :text=>'_dradis_session='},
    {:text=>'<div id="back"><a href="/">&lsaquo; back to the app.</a></div>'},
    {:text=>'<li>Integration with existing systems and tools through <a href="http://Dradisframework.org/server_plugins.html">server plugins</a>.</li>'},
    {:text=>'<p class="copyright">Dradis'},
    {:text=>'<p id="wizard">Not familiar with Dradis? Checkout the <a href="/wizard">Wizard</a>.</p>'},
    {:text=>'effective information sharing - <a href="http://dradisframework.org/">http://dradisframework.org</a>'},
    {:version=>/<title>First Time User's Wizard - dradis v([\d\.]+)<\/title>/}
]
passive do
	m=[]
	m << { :name=>"_dradis_session cookie" } if @headers["set-cookie"] =~ /^_dradis_session=/
	m
end
end
