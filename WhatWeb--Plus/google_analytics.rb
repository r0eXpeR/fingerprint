Plugin.define do
    name "google_analytics" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /<amp-analytics [^>]*type=["']googleanalytics["']/  },
    { :regexp => /google-analytics\.com.(?:ga|urchin|analytics)\.js/, :search => 'body'  }
]
end