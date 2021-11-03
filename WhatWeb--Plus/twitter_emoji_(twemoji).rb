Plugin.define do
    name "twitter_emoji_(twemoji)" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /twemoji(?:\.min)?\.js/, :search => 'body'  }
]
end