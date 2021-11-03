Plugin.define do
name "Zabbix"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "Zabbix is an enterprise-class open source distributed monitoring solution for networks and applications."
website "http://www.zabbix.com/"
dorks [
'"Zabbix * Copyright * by SIA Zabbix"',
'inurl:"tr_status.php?sid=" intitle:"refreshed every"'
]
matches [
    {:mmh3=>'892542951'},
    {:regexp=>/<body[^>]+zbxCallPostScripts/},
    {:regexp=>/ZABBIX SIA/, :search=>'body', :certainty=>70},
    {:search=>"headers", :text=>'zbx_sessionid'},
    {:text=>'images/general/zabbix.ico'},
    {:text=>'Zabbix SIA'},
    {:text=>'meta name="Author" content="Zabbix SIA'},
    {:url=>'/images/general/zabbix.ico', :md5=>'2bde0f1bbbb3da98b86e46c28125336c'},
    {:url=>'/zabbix/images/general/zabbix.ico', :md5=>'2bde0f1bbbb3da98b86e46c28125336c'},
    {:url=>'/zabbix/favicon.ico', :md5=>'84dc123a94418b2897cbd147883472d6'},
    {:version=>/<a class="highlight" href="http:\/\/www\.zabbix\.com">Zabbix ([^\s]+) Copyright 2001-20[\d]{2} by Zabbix SIA<\/a>/},
    {:version=>/<a href="http:\/\/www\.zabbix\.com" class="highlight">ZABBIX ([^\s<]+)<\/a>&nbsp;Copyright 2001-20[\d]{2} by <a href="http:\/\/www\.zabbix\.com" class="highlight">SIA Zabbix<\/a>/},
    {:version=>/<script type="text\/javascript" src="jsLoader\.php\?ver=([^\s&]+)&lang=en_[a-zA-Z]{2}"><\/script>/},
    {:version=>/<td class="page_footer_l">[\s]*<a class="highlight" href="http:\/\/www\.zabbix\.com">Zabbix&nbsp;([^\s&]+)&nbsp;Copyright 2001-20[\d]{2} by&nbsp;SIA Zabbix<\/a><\/td>/}
]
end
