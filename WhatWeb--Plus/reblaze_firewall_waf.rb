Plugin.define do
    name "reblaze_firewall_waf" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :search => 'headers', :text => 'rbzid='  }
]
end