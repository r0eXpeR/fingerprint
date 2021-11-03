Plugin.define do
    name "open_web_analytics" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /<!-- (?:Start|End) Open Web Analytics Tracker -->/  }
]
end