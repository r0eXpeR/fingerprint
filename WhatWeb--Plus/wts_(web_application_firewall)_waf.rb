Plugin.define do
    name "wts_(web_application_firewall)_waf" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :search => 'headers', :text => 'wts/'  },
    { :text => 'title>wts-waf'  }
]
end