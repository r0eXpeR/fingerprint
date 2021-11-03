Plugin.define do
    name "sonicwall_firewall_(dell)_waf" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :text => 'Server: SonicWALL'  },
    { :text => 'This request is blocked by the SonicWALL'  },
    { :text => 'Web Site Blocked'  },
    { :text => 'nsa_banne'  }
]
end