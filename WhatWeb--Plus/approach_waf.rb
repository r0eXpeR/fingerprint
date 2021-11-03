Plugin.define do
    name "approach_waf" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :text => 'Approach</b> Web Application Firewall'  },
    { :text => 'Approach</i> infrastructure team'  }
]
end