Plugin.define do
    name "stingray_application_firewall_waf" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :status => '403', :search => 'headers', :text => 'X-Mapping-'  },
    { :status => '500', :search => 'headers', :text => 'X-Mapping-'  }
]
end