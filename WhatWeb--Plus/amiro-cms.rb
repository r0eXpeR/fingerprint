Plugin.define do
name "Amiro-CMS"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "Amiro.CMS is a top-notch website development and content management system with several dynamic features and a user-friendly interface."
website "http://www.amirocms.com/"
dorks [
'"powered by Amiro.CMS"'
]
matches [
    {:text=>"<a href='http://www.amirocms.com' target=_blank>Powered by: Amiro CMS</a>"},
    {:text=>'-= Amiro.CMS (c) =-'},
    {:text=>'<a href="http://www.amirocms.com/" target=_blank><FONT size=1><B>Powered by: Amiro CMS</B></FONT></A>'},
    {:text=>'Powered by: Amiro CMS'}
]
passive do
        m=[]
        if @body =~ /<meta name="GENERATOR" content="/ and @body =~ / -= Amiro.CMS \(c\) =- / and (@body =~ / www.amiro.ru / or @body =~ / www.amirocms.com /)
                m << {:name=>"multi-line meta generator"}
        end
        m
end
end
