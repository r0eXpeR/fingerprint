Plugin.define do
    name "google_web_services_waf" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :text => 'by g cloud security policy'  },
    { :text => 'our systems have detected unusual traffic'  },
    { :text => 'your client has issued a malformed or illegal request'  }
]
end