Plugin.define do
    name "rockontrol" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :url => '/plugins/login/css/rklogin.css', :text => 'background-repeat: no-repeat;'   },
    { :url => '/plugins/login/images/login_logo.jpg', :md5 => '73d39a88da649fb3b2150b58fa6dd8fe'   }
]
end