Plugin.define do
name "OSCommerce"
authors [
  "Andrew Horton",

]
version "0.4"
description "Open Source Ecommerce System in PHP. It was first released in March 2000 as 'The Exchange Project'. Branched projects include : Ian's Loaded, ZenCart, CRE Loaded,   http://www.oscommerce.com. This plugin recognises security warnings for file permissions and the installation directory. Aggressive plugin attempts to get version from /admin/login.php page."
dorks [
'"Powered by osCommerce"',
'inurl:"extras/update.php" -display'
]
matches [
    {:certainty=>25, :text=>'The Exchange Project - Community Made Shopping!'},
    {:regexp=>/<(?:input|a)[^>]+name="osCsid/},
    {:regexp=>/<(?:tr|td|table)class="[^"]*infoBoxHeading/},
    {:regexp=>/<[^>]+(src|href)\s*=\s*[^>]\bosCsid=([a-z0-9]{26}|[a-z0-9]{32})/},
    {:regexp=>/<br .>Powered by <a href="https?:..www\.oscommerce\.com/},
    {:search=>"headers[set-cookie]", :regexp=>/osCsid=[a-z0-9]{32};/},
    {:search=>"headers[set-cookie]", :text=>'cookie_test=please_accept_for_session;'},
    {:string=>"warning", :text=>'<td class="messageStackWarning"><img src="images/icons/warning.gif"'},
    {:text=>'Powered by <a href="http://www.oscommerce.com" target="_blank">osCommerce</a>'},
    {:version=>/<img src="images\/oscommerce.png" border="0" alt="osCommerce ([^"]+)"/, :url=>"/admin/login.php",:name=>"admin page version"}
]
end
