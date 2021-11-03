Plugin.define do
name "Avocent-DSView"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "Avocent DSView 3 management software provides data centers with secure, out-of-band, centralized management for all connected IT and network devices."
website "http://www.avocent.com/Products/Category/Data_Center_Management_Software/DSV3_Software.aspx"
dorks [
'inurl:"dsview/nmmhelp-index.do"'
]
matches [
    {:module=>/<!-- TITLE -->[\s]+<title>[\s]+(DSWebview [\d\.]+)[\s]+<\/title>[\s]+<!-- AVOCENT ICON -->/},
    {:search=>"headers", :text=>'Avocent DSView'},
    {:search=>"headers[server]", :version=>/^Avocent DSView [\d]\/([^\s]+)$/},
    {:text=>'/dsview/images/favicon.ico'},
    {:text=>'/dsview/protected/login.do'},
    {:text=>'<form name="loginForm" method="post" action="/dsview/protected/login.do" class="form-block"><span id=\'propertiesForm\'></span>'},
    {:text=>'<link rel="stylesheet" type="text/css" href="/dsview/scheme-1.css" title="Default" />'},
    {:url=>"/dsview/images/favicon.ico", :md5=>"9de6b6b67f27e264ff7d82ae071cec3f"},
    {:url=>"/dsview/protected/login.do", :version=>/<div class="standard-footer">[\s]+This software is protected by all U\.S\. and international copyright law and is subject to the terms and conditions of the <a class="standard-footer highlight" href="\/dsview\/[^"]+" target="dsvieweula">Avocent DSView [\d\.]+ (Software )?End User License Agreement<\/a>\.[\s]+<\/div>[\s]+Version: ([^\s]+)/, :offset=>1}
]
end
