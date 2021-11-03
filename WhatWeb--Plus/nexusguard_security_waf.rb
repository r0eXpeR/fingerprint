Plugin.define do
    name "nexusguard_security_waf" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :text => '<p>Powered by Nexusguard'  },
    { :text => 'nexusguard.com/wafregex'  }
]
end