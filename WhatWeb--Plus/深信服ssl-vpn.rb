Plugin.define do
    name "深信服ssl-vpn" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :search => "headers", :text => 'TWFID'     },
    { :text => 'login_psw.csp'     },
    { :text => 'login_psw.csp'    }
]
end