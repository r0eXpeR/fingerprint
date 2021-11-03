Plugin.define do
name "CMS-Made-Simple"
authors [
  "Andrew Horton", 

]
version "0.1"
description "CMS Made Simple is an opensource Content Management System developed in PHP."
website "http://www.cmsmadesimple.org/"
matches [
    {:name=>"Admin Login Title", :text=>"<title>Login to CMS Made Simple</title>", :url=>"/admin/login.php"},
    {:name=>"CMSSESSID cookie", :regexp=>/^CMSSESSID/, :search=>"headers[set-cookie]"},
    {:name=>"Meta generator", :text=>'<meta name="Generator" content="CMS Made Simple'},
    {:name=>"Powered by footer", :version=>/This site is powered by <a[^>]+>CMS Made Simple<\/a> version ([0-9\.]+)/},
    {:name=>"Version from /doc/CHANGELOG.txt", :version=>/^Version ([^ ]+).*/m, :url=>"/doc/CHANGELOG.txt"},
    {:name=>"favicon", :url=>"/favicon_cms.ico", :md5=>"ebf500d206705bda0cb79021c15da98a"},
    {:search=>"headers", :text=>'CMSSESSID'},
    {:text=>'content="CMS Made Simple'}
]
end
