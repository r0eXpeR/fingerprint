Plugin.define do
    name "safe3_waf" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :search => 'headers', :text => 'Safe3 Web Firewall'  },
    { :search => 'headers', :text => 'Safe3WAF'  }
]
end