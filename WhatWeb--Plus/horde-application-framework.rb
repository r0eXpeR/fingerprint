Plugin.define do
name "Horde-Application-Framework"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.3"
description "A web application framework. Projects using the framework include webmail, a wiki and groupware. (Mostly PHP)"
website "http://www.horde.org/"
dorks [
'"powered by Horde Application Framework"',
'inurl:"util/icon_browser.php?subdir="',
'intitle:"WebMail 4.0 LOGIN" "E-mail address" "Password"'
]
matches [
    {:md5=>'b74924c612af6030729d7ac3bd0ef803', :url=>'themes/graphics/horde-power1.png'},
    {:search=>"headers", :text=>'horde_secret_key'},
    {:text=>"if (typeof(_setHordeTitle) == 'undefined' && document.title && parent.frames.horde_main) parent.document.title = document.title;"},
    {:text=>'/themes/graphics/horde-power1.png" alt="Powered by Horde" title="" />'},
    {:regexp=>/<!--   Horde Project: http:\/\/horde.org\/ | IMP: http:\/\/horde.org\/imp\/    -->/},
    {:text=>'<!-- IMP: Copyright 2001-2006, The Horde Project. IMP is under the GPL. -->'},
    {:text=>'<!-- This file contains any "Message Of The Day" Type information -->'},
    {:text=>'<a href="icon_browser.php?app=chora">Version Control</a><br />'},
    {:text=>'<html><body bgcolor="#aaaaaa"><a href="icon_browser.php">Application List</a><br /><br /><h2>Icons for My Account</h2>'},
    {:text=>'<img src="/themes/default/graphics/horde-power1.png'},
    {:text=>'<link href="/mail/mailbox.php?mailbox=INBOX" rel="Top" />'},
    {:text=>'<script language="JavaScript" type="text/javascript" src="/hunter/js/enter_key_trap.js"></script>'},
    {:text=>'Powered by </font><a href="http://www.horde.org/" TARGET=_blank>'},
    {:text=>'Powered by Horde'},
    {:text=>'title="This site is powered by The Horde Application Framework." href="http://horde.org">'},
    {:version=>/<!-- \$Horde: horde\/config\/conf.xml,v ([\d\.]+) /},
    {:version=>/<title>WebMail ([\d\.]+) LOGIN<\/title>/}
]
passive do
	m=[]
	m << { :name=>"webmail_version Cookie" } if @headers["set-cookie"] =~ /webmail_version=(magnum|hunter); /
	m << { :name=>"webmail4prod Cookie" } if @headers["set-cookie"] =~ /webmail4prod=[a-f\d]{32}; /
	m
end
end
