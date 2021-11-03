Plugin.define do
    name "advanced_web_stats" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /aws\.src = [^<]+caphyon-analytics/  }
]
end