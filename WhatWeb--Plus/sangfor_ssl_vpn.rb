Plugin.define do
    name "sangfor_ssl_vpn" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :text => '/por/login_psw.csp'   },
    { :text => 'loginPageSP/loginPrivacy.js'   }
]
end