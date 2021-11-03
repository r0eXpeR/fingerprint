Plugin.define do
name "PhilBoard"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.2"
description "PhilBoard - ASP powered forum"
website "http://www.philboards.com/"
matches [
{ :ghdb=>'"powered by philboard" inurl:philboard.asp', :certainty=>75 },
{ :version=>/<img src="images\/philboard_small.gif" alt="powered by philboard [v]*([\d\.]+)" width="76" height="21" border="0" align="middle">/ },
]
end
