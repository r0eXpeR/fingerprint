Plugin.define do
    name "accelerated_mobile_pages" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /<html[^>]* (?:amp|⚡)/  }
]
end