Plugin.define do
    name "ruvarhrm" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :url => '/RuvarHRM/images/login_title.gif', :md5 => '4f3ac62813564750a417a5146ac821c3'   },
    { :url => '/RuvarHRM/images/logo.gif', :md5 => 'c952dc2f6134b9ef40ccf0d0a9d2f8a5'   },
    { :url => '/RuvarHRM/web_login/login.aspx', :text => '/RuvarHRM/script/js_window.js'   }
]
end