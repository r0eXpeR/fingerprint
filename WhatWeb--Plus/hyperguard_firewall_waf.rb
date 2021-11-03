Plugin.define do
    name "hyperguard_firewall_waf" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :search => 'headers', :text => 'ODSESSION='  }
]
end