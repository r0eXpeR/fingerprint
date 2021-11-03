Plugin.define do
name "Imageview"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "Imageview 6 is a 4th generation image gallery script, using AJAX to deliver the best version yet."
website "http://www.blackdot.be/?inc=projects/imageview"
dorks [
'inurl:imageview5',
'inurl:imageview6',
'intitle:"Imageview * :: By Jorge Schrauwen"'
]
matches [
    {:certainty=>25, :text=>'<meta name="author" content="Jorge Schrauwen" />'},
    {:regexp=>/<td (width="160"|rowspan="2")><iframe allowtransparency="yes" frameborder="0" height="100%" width="100%" scrolling="auto" title="(frmcontent|frmlist)" name="(frmcontent|frmlist)" src="albumlist.php\?album=[^"]*"><\/iframe><\/td>/},
    {:text=>'<frame src="about:blank" name="iHistoryRecorder" id="iHistoryRecorder" />'},
    {:text=>'<frame src="preload.php" name="frImageview" id="frImageview" />'},
    {:text=>'<link rel="Developer" href="http://www.blackdot.be" title="Blackdot.be" />'},
    {:text=>'By Jorge Schrauwen'},
    {:text=>'content="Imageview'},
    {:text=>'href="http://www.blackdot.be" title="Blackdot.be'},
    {:version=>/<meta name="description" content="Imageview ([\d]{1}) :: By Jorge Schrauwen \(http:\/\/www.backdot.be\)">/},
    {:version=>/<title>Imageview ([\d]{1}) :: (By Jorge Schrauwen|User Settings|Upload Image|Album View|Administration|RSS Feeds|Install)<\/title>/},
    {:version=>/<title>Imageview ([\d]{1}) :: Help:: (Administration|Installation|Miscellaneous|User|Welcome|Menu)<\/title>/}
]
end
