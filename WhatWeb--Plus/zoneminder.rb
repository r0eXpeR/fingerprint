Plugin.define do
name "ZoneMinder"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "Linux video camera security and surveillance solution - Web interface - Requires MySQL and PHP"
website "http://www.zoneminder.com/"
dorks [
'"ZoneMinder Console - Running" intitle:Console inurl:view=console',
'"ZoneMinder Login" "Username" "Password" intitle:Login'
]
matches [
    {:md5=>"e07c0775523271d629035dc8921dffc7", :url=>"/graphics/favicon.ico"},
    {:search=>"headers[server]", :version=>/^ZoneMinder Video Server\/([^\s]+)$/},
    {:search=>"headers[set-cookie]", :regexp=>/ZMSESSID=[^;]+/},
    {:string=>/<a href="javascript: newWindow\( '\/index\.php\?view=groups', 'zmGroups', 400, 220 \);">([\d]+ Monitors)<\/a>/},
    {:string=>/<div id="monitorSummary"><a href="\?view=groups" onclick="createPopup\( '\?view=groups', 'zmGroups', 'groups' \); return\( false \);">([\d]+ Monitors)<\/a><\/div>/},
    {:text=>'<tr><td colspan="2" class="smallhead" align="center">ZoneMinder Login</td></tr>'},
    {:text=>'ZoneMinder Login'},
    {:version=>/Running<\/a> - <a href="\?view=version" onclick="createPopup\( '\?view=version', 'zmVersion', 'version' \); return\( false \);">v([^<^\s]+)<\/a><\/h2>/},
    {:version=>/Running<\/a> - <a href="javascript: newWindow\( '\/index\.php\?view=version', 'zmVersion', 320, 140 \);">v([^<^\s]+)<\/a>/}
]
passive do
	m=[]
	if @body =~ /<h1>ZoneMinder Login<\/h1>/ and @body =~ /<td class="colRight"><input type="password" name="password" value="" size="12"\/><\/td>/
		m << { :name=>"h1 Heading and Password field" }
	end
	m
end
end
