Plugin.define do
    name "nextcloud" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /<script[^>]*>[^<]*nextcloud_[^<]*oc_config={[^}]*"version":"([\d.]+)/,:offset => 1  },
    { :search => 'body', :regexp => /app-id=1125420102/  }
]
end