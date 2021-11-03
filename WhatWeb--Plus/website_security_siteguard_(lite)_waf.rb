Plugin.define do
    name "website_security_siteguard_(lite)_waf" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :text => 'Powered by SiteGuard Lite'  },
    { :text => 'The server refuse to browse the regex'  }
]
end