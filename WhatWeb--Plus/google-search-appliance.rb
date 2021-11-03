Plugin.define do
name "Google-Search-Appliance"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "The Google Search Appliance (GSA) is a piece of hardware that corporations install on-premise so that employees can search enterprise data."
website "http://www.google.com/enterprise/search/gsa.html"
matches [
    {:certainty=>75, :search=>"headers[location]", :regexp=>/^\/EnterpriseController/},
    {:certainty=>75, :search=>"headers[server]", :regexp=>/^GSE$/},
    {:search=>"headers", :text=>'Google Search Appliance'},
    {:text=>'<font face=arial,sans-serif size=-1>If you are an end user looking for a Google search service on your network, please ask your system administrator for the URL of the search service.<p>'},
    {:text=>'<tr id="TopBar"> <td id="TopBarName">  Welcome to the Google Mini!  </td> </tr> </table>'},
    {:text=>'<tr id="TopBar"><td id="TopBarName">About Google Search Appliance</td></tr></table></td></tr></table>'},
    {:text=>'<tr id="TopBar"><td id="TopBarName">Welcome to the Google Search Appliance!</td></tr></table></td></tr></table>'},
    {:text=>'Google Search Appliance'},
    {:version=>/<\/font>[\s]+<br><br>[\s]+<font face="arial,sans-serif">System Version:[\s]+([^\s]+)[\s]+<\/font>[\s]+<br><br>[\s]+<font face="arial,sans-serif">Appliance ID:/}
]
end
