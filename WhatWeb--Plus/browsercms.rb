Plugin.define do
name "BrowserCMS"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "The newly redesigned BrowserCMS 2.0 is an easy, affordable way to control, edit, and organize website content."
website "http://www.browsercms.com/"
dorks [
'"powered by BrowserCMS"'
]
matches [
    {:offset=>1, :search=>'body', :regexp=>/BrowserCMS ([\d.]+)/},
    {:regexp=>/<a href="http:\/\/www.browsercms.com[\/]*"[^>]+title="Powered by BrowserCMS"[^>]+/},
    {:regexp=>/<a href="http:\/\/www.browsercms.com[^>]+><img[^>]*src="\/site\/images[^>]+ onmouseover="this.src='\/site\/images[^>]+onmouseout="this.src='\/site\/images[^>]+alt="Powered by BrowserCMS"[^>]*><\/a>/i},
    {:regexp=>/<input type="hidden" name="failure_uri" value="[^>]*\/page.ww\?name=[^>]*\&section=[^>]*"\/>/},
    {:regexp=>/<input type="hidden" name="success_uri" value="[^>]*\/page.ww\?name=[^>]*\&section=[^>]*"\/>/},
    {:regexp=>/Powered by <a href="http:\/\/www.browsercms.com[\/]*"[^>]+>BrowserCMS<\/a>/i},
    {:text=>'<!--User is member of the following groups:  -->'},
    {:text=>'<form method="POST" action="/portlets/login/do-login.jsp" name="security">'},
    {:text=>'<li class="bmcms"><a href="http://www.browsercms.com/index.ww" title="BrowserCMS 2.0" target="_blank"><span>Powered by BrowserCMS 2.0</span></a></li>', :version=>"2.x"},
    {:text=>'Powered by BrowserCMS'},
    {:text=>'content="BrowserCMS'},
    {:version=>/<meta name="generator" content="BrowserCMS ([^\"]+)"/}
]
end
