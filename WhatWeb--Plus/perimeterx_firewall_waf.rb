Plugin.define do
    name "perimeterx_firewall_waf" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :text => 'https://www.perimeterx.com/whywasiblocked'  }
]
end