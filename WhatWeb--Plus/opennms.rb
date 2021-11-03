Plugin.define do
name "OpenNMS"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "OpenNMS - Enterprise-Grade Network Management Application Platform"
website "http://www.opennms.com/"
dorks [
'intitle:"OpenNMS Web Console" "User" "Password" "OpenNMS Copyright"'
]
matches [
    {:regexp=>/<h1 id="headerlogo"><a href="[^"]*index\.jsp"><img src="[^"]*images\/logo\.png" alt="OpenNMS Web Console Home"\/><\/a><\/h1>/},
    {:regexp=>/<p><input type="checkbox" name="_(spring|acegi)_security_remember_me"> Don't ask for my password for two weeks<\/p>/},
    {:search=>"headers", :text=>'/opennms/login.jsp'},
    {:string=>/<p>\s+OpenNMS <a href="(support|help)\/about\.jsp">Copyright<\/a> &copy; 2002-(20[\d]{2})\s+/, :offset=>1},
    {:text=>'/css/gwt-asset.css'},
    {:text=>'OpenNMS® is a registered trademark of'}
]
end
