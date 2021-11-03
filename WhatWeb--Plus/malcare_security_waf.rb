Plugin.define do
    name "malcare_security_waf" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :text => 'Blocked because of Malicious Activities'  },
    { :text => 'powered by MalCare'  }
]
end