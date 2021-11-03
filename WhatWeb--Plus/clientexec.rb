Plugin.define do
name "ClientExec"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "ClientExec is a comprehensive and flexible web hosting billing solution designed for customer billing, helpdesk, e-mail and (team) management and communication. ClientExec was conceived and built with small to mid-sized hosting companies in mind."
website "http://www.clientexec.com/"
dorks [
'intitle:"Support Center - Powered By ClientExec"'
]
matches [
    {:module=>/<img class="logo" src="templates\/([^\/]+)\/images\/public\/caption_photo\.jpg" alt="clientexec" \/>/},
    {:regexp=>/clientexec\.[^>]*\s?=\s?[^>]*;/},
    {:search=>"headers", :text=>'CLIENTEXEC='},
    {:text=>'<!-- These should not have debug at the end for production -->'},
    {:text=>'<form action="index.php?fuse=admin&amp;action=Login&amp;public=1" method="post"'},
    {:text=>'<title>Support Center - Powered By ClientExec</title>'},
    {:text=>'Powered By ClientExec'}
]
passive do
	m=[]
	if @headers["set-cookie"] =~ /CLIENTEXEC=[a-z\d]{26,32}; path=\//
		m << { :name=>"CLIENTEXEC Cookie" }
		if @body =~ /^Cannot access EnterLicense view directly$/
			m << { :string=>"Unauthorized Version" }
		end
	end
	m
end
end
