Plugin.define do
name "EZCMS"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.2"
description "Building your own website is easy with the EZ Websites Builder"
website "http://www.ezwebsites.com.au"
dorks [
'"powered by EZCMS" -Vulnerabilities'
]
matches [
    {:md5=>'3f9861ab3124420694f663c82bf770ab', :url=>'admin/images/headerright.png'},
    {:text=>'        <td align="right"><a href="http://www.ezwebsites.com.au" class="credits">Site Powered by EZCMS</a></td>'},
    {:text=>'      <td width="100%" align="left" valign="bottom" background="images/headerbg.png"><div align="right"><img src="images/headerright.png" border="0"></div></td>'},
    {:text=>'<title>EZCMS Content Management System</title>'},
    {:text=>'EZCMS Content Management System'},
    {:text=>'Powered by EZCMS'},
    {:version=>/<center><strong>EZCMS ([\d\.]+) /},
    {:version=>/Powered by <a href="http:\/\/ezcms.eztechhelp.com\/">EZCMS ([\d\.]+)<\/a>/}
]
end
