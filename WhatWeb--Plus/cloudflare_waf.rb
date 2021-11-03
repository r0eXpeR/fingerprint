Plugin.define do
    name "cloudflare_waf" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :search => 'headers', :text => '__cfduid'  },
    { :search => 'headers', :text => 'cloudflare'  },
    { :text => 'Attention Required!'  },
    { :text => 'CLOUDFLARE_ERROR_'  },
    { :text => 'cloudflare.com/cdn.cgi'  }
]
end