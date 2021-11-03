Plugin.define do
    name "google_analytics_enhanced_ecommerce" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /google-analytics\.com\.plugins\.ua\.(?:ec|ecommerce)\.js/, :search => 'body'  }
]
end