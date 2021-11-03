Plugin.define do
    name "shield_security_waf" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :text => 'Something in the URL'  },
    { :text => 'blocked by the shield'  }
]
end