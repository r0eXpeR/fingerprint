Plugin.define do
name "HESK"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "Web-based help desk software featuring unlimited tickets, categories, knowledgebase, attachments and more. - Requires: PHP and MySQL"
website "http://www.hesk.com/"
dorks [
'"Powered by Help Desk Software HESK"'
]
matches [
    {:regexp=>/<link href="(\.\/)?hesk_style\.css" type="text\/css" rel="stylesheet"/},
    {:regexp=>/<link rel="stylesheet" type="text\/css" href="(\.\/)?hesk_style\.css"/},
    {:regexp=>/<p style="text-align:center"><span class="smaller">Powered by <a href="http:\/\/www\.hesk\.com" class="smaller"( target="_blank")? title="Free Help Desk Software HESK">Help Desk Software<\/a> HESK&trade;/},
    {:regexp=>/<script language="Javascript" type="text\/javascript" src="(\.\.\/|\.\/)?hesk_javascript\.js"><\/script>/},
    {:text=>'<!-- START KNOWLEDGEBASE SUGGEST -->'},
    {:text=>'<body onload="javascript:var i=new Image();i.src=\'./img/orangebtnover.gif\';var i2=new Image();i2.src=\'./img/greenbtnover.gif\';">'},
    {:text=>'<img src="img/loading.gif" width="24" height="24" alt="" border="0" style="vertical-align:text-bottom" /> <i>Loading knowledgebase suggestions...</i>'},
    {:text=>'<p style="text-align:center"><a href="admin/" class="smaller">Go to Administration Panel</a></p>'},
    {:text=>'Powered by <a href="http://www.hesk.com'},
    {:text=>'Powered by <a href="http://www.phpjunkyard.com/free-helpdesk-software.php" class="smaller" target="_blank">Help desk software</a> HESK<sup>TM</sup></span>', :version=>"<1.0"},
    {:text=>'Powered by <a href="https://www.hesk.com'},
    {:text=>'hesk_javascript.js'},
    {:text=>'hesk_style.css'},
    {:version=>/<p align="center"><font class="smaller">Powered by <a href="[^>^"]{0,256}" class="smaller" target="_blank">Help desk software Hesk<\/a> ([^\s^<]+)<\/font>/}
]
end
