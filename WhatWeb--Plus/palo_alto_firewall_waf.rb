Plugin.define do
    name "palo_alto_firewall_waf" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :text => 'Palo Alto Next Generation Security Platform'  },
    { :text => 'Virus Spyware Download Blocked'  },
    { :text => 'has been blocked in accordance with company policy'  }
]
end