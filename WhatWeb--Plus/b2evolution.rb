Plugin.define do
name "b2evolution"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "b2evolution is a powerful blog tool you can install on your own website."
website "http://b2evolution.net/"
dorks [
'"Powered by b2evolution"'
]
matches [
    {:regexp=>/Powered by <a href="http:\/\/b2evolution.net[\/]*"[^>]+>b2evolution<\/a>/},
    {:regexp=>/rsc\/img\/powered-by-b2evolution-150t.gif" alt="Powered by b2evolution"/i},
    {:text=>'/powered-by-b2evolution-150t.gif'},
    {:text=>'Powered by b2evolution'},
    {:text=>'content="b2evolution'},
    {:version=>/<meta name="generator" content="b2evolution ([^\"]+)" \/>/},
    {:version=>/<p class="footer"><a href="http:\/\/b2evolution.net\/" title="visit b2evolution's website"><strong>b2evolution ([^<]+)<\/strong><\/a>/}
]
end
