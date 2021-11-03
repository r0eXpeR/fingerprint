Plugin.define do
    name "google_tag_manager" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /<!-- (?:End )?Google Tag Manager -->/  },
    { :regexp => /googletagmanager\.com.gtm\.js/, :search => 'body'  },
    { :regexp => /googletagmanager\.com.ns\.html[^>]+><.iframe>/  },
    { :search => 'body', :regexp => /googletagmanager\.com.gtag.js/  }
]
end