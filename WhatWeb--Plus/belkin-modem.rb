Plugin.define do
name "Belkin-Modem"
authors [
  "Andrew Horton",

]
version "0.3"
description "Belkin Consumer Modem / Router"
website "http://www.belkin.com/"
matches [
    {:name=>"html comments", :regexp=>/\/\/ when proto = Bridge or ipExt = 1, DHCP should show disabled/},
    {:name=>"inline javascript", :text=>"var isPPPoE, isStatic, isDynamic, isnat, isdialup, isbigpond, ispptp, isfirewall;"},
    {:regexp=>/<meta name="description" content="Belkin [\S]+/},
    {:text=>"href=\"main_router.css\" src=\"showMenu.js\""},
    {:text=>'content="Belkin'},
    {:version=>"2307 wireless router", :text=>"<meta name=\"description\" content=\"Belkin 2307"},
    {:version=>"F5D7230-4P", :text=>"<td bgcolor=\"#94CAE4\" width=\"50%\" height=\"18\">F5D7230-4P</td>"}
]
end
