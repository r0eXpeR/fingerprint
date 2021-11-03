Plugin.define do
name "CitusCMS"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "CitusCMS - Open Source Content Management System"
website "http://www.citus-cms.org/"
dorks [
'"Powered by CitusCMS"'
]
matches [
    {:text=>'<!-- Powered by CitusCMS - http://www.citus-cms.org -->'},
    {:text=>'<meta name="generator" content="CitusCMS - http://www.citus-cms.org" />'},
    {:text=>'<meta name="generator" content="CitusCMS [http://www.citus-cms.org]" />'},
    {:text=>'<strong>CitusCMS</strong>'},
    {:text=>'<title>Administration &#149; Webseitenname</title>'},
    {:text=>'Powered by <a href="http://www.citus-cms.org" target="_blank" title="Powered by CitusCMS"><strong>CitusCMS</strong></a>'},
    {:text=>'Powered by CitusCMS'},
    {:text=>'content="CitusCMS'},
    {:version=>/<!-- CitusCMS Core Version: ([^\s]+) -->/}
]
end
