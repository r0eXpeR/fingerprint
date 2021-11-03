Plugin.define do
name "ASP-Nuke"
authors [
  "Andrew Horton",

]
version "0.5"
description "ASP Nuke is an open-source software application for running a community-based web site on a web server. The requirements for the ASP Nuke content management system are: 1. Microsoft SQL Server 2000 and 2. Microsoft Internet Information Server (IIS) 5.0"
website "http://www.aspnuke.com/"
matches [
    {:name=>"P3P Privacy Headers", :certainty=>25, :search=>"headers[p3p]", :text=>"CP=\"NOI CUR OUR IND UNI COM NAV INT\""},
    {:regexp=>/<a href="\/gotoURL.asp\?url=/},
    {:regexp=>/<a href="http:\/\/www.aspnuke.it" target="_blank">ASP-Nuke [0-9\.]*<\/a>/},
    {:regexp=>/<form name='Authentication' method='post' action='[^']*\/authent.asp'>/},
    {:regexp=>/<link rel="Shortcut Icon" href="[^>]*aspnuke.ico">/},
    {:text=>"<a href=\"http://www.rot.dk\" target=\"_blank\">Asp-Nuke</a> community"},
    {:text=>"<meta name=\"Generator\" CONTENT=\"ASP-Nuke"},
    {:text=>"<meta name=\"Generator\" content=\"ASPNuke"},
    {:text=>"Designed with <a href=\"http://www.asp-nuke.net\" target=\"_blank\">ASP-Nuke</a>"},
    {:text=>'CONTENT="ASP-Nuke'},
    {:text=>'content="ASPNUKE'},
    {:version=>"2", :text=>"<meta name=\"Generator\" content=\"ASPNUKE v2.0 - distributed under GPL license\">"},
    {:version=>"v1.1+", :text=>"<br>Designed with ASP-Nuke v1.1+"},
    {:version=>/<a href="http:\/\/www.aspnuke.it" target="_blank">Asp-Nuke ([\d\.]+)<\/a>/,  :name=>"aspnuke.it"},
    {:version=>/<meta name="Generator" (content|CONTENT)="(ASPNUKE|ASP-Nuke) ([^->"]+)/, :offset=>2,  :name=>"meta generator tag"},
    {:version=>/Designed with <a href="http:\/\/www.asp-nuke.net" target="_blank">ASP-Nuke<\/a> ([^<]+)<br>/,  :name=>"desgined by"}
]
end
