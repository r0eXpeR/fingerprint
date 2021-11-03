Plugin.define do
name "eFront"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "eFront is a modern learning system, bundled with key enterprise functionality ranging from skill-gap analysis and branch management to tailor-made reports."
website "http://www.efrontlearning.net/"
dorks [
'inurl:"index.php?ctg=contact"',
'allintext:"efront version" "Community Edition" "Contact us"'
]
matches [
    {:text=>"<script>var BOOKMARKTRANSLATION = 'Bookmarks';var NODATAFOUND = 'No data found';</script>"},
    {:text=>'</script><script>if (__shouldTriggerNextNotifications) { new Ajax.Request("send_notifications.php?ajax=1", {method:\'get\', asynchronous:true}); } </script>'},
    {:text=>'<a href = "http://www.efrontlearning.net'},
    {:text=>'<body  onkeypress = "if (window.eF_js_keypress) eF_js_keypress(event);" onbeforeunload = "if (window.getPeriodicData) getPeriodicData();">'},
    {:version=>/<div><a href = "http:\/\/www\.efrontlearning\.net">eFront<\/a> \(version ([^\)]+)\) &bull; Community Edition &bull; <a href = "index\.php\?ctg=contact">/},
    {:version=>/<script type = "text\/javascript" src = "js\/scripts\.php\?(build=[\d]+)&load=[^"^>]+"> <\/script>/}
]
end
