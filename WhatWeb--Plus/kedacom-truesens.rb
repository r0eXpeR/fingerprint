Plugin.define do
name "Kedacom-TrueSens"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "Kedacom TrueSens videoconferencing system"
website "http://www.kedacom.co/defaulti.aspx?id=2"
matches [
    {:search=>"headers", :text=>'KEDACOM'},
    {:search=>"headers[server]", :regexp=>/^KEDACOM-Webs$/},
    {:text=>'/img/kedacom-logo.jpg'},
    {:text=>'<img src="./img/kedacom-logo.jpg" alt="WEB CONSOLE" /></td>'},
    {:url=>"/index.htm", :text=>'<body><span style="font:12px;">Loading...</span></body>'}
]
end
