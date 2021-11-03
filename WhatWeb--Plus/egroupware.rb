Plugin.define do
name "eGroupWare"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "Egroupware is a web based software for team collaboration, central data management and CRM: email client, online calendar, contact and task management, project and file management, trouble ticket system, synchronization."
website "http://www.egroupware.org/"
dorks [
'inurl:"phpgw_forward" ext:php'
]
matches [
    {:md5=>"628381f4ef8ee6d35665e002ffa61bb0", :url=>"phpgwapi/templates/idots/images/password.png"},
    {:md5=>"f6e9339e652b8655d4e26f3e947cf212", :url=>"phpgwapi/templates/idots/images/favicon.ico"},
    {:string=>/<meta name="copyright" content="eGroupWare http:\/\/www.egroupware.org \(c\) ([\d\.]+)" \/>/i},
    {:text=>"<!-- we don't need body tags anymore, do we?) we do!!! onload!! LK -->", :version=>"1.3 - 1.6"},
    {:text=>"<TITLE>Expresso Livre - Login</TITLE>", :module=>"Expresso Livre"},
    {:text=>"<title>EGroupware [Login]</title>"},
    {:text=>'<META NAME="description" CONTENT="Expresso Livre login screen, working environment powered by eGroupWare">', :module=>"Expresso Livre"},
    {:text=>'<META NAME="keywords" CONTENT="Expresso Livre login screen, eGroupWare, groupware, groupware suite">', :module=>"Expresso Livre"},
    {:text=>'<br><a title="eGroupWare" target="_blank" href="http://www.egroupware.org/"> Powered by eGroupWare </a></div></td>', :module=>"Expresso Livre"},
    {:text=>'<div align="center"><font color="#FF0000">Votre session n\'est pas valide.</font></div>', :string=>"Language:French"},
    {:text=>'<div id="loginCdMessage"><font color="red">Your session could not be verified.</font></div>', :string=>"Language:English"},
    {:text=>'<meta name="author" content="eGroupWare http://www.egroupware.org" />'},
    {:text=>'content="eGroupWare'},
    {:version=>/<a href="http:\/\/www.egroupware.org" target="_blank">eGroupWare<\/a> ([\d\.]+)[^<]*<\/div>/},
    {:version=>/<div id="divPoweredBy>[^<]*<a href="http:\/\/www.egroupware.org">eGroupWare<\/a> version ([\d\.]+)<\/span><\/div>/}
]
end
