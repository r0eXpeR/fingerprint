Plugin.define do
    name "distil_firewall_waf" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :search => 'headers', :text => 'X-Distil-CS'  }
]
end