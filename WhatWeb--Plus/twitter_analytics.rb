Plugin.define do
    name "twitter_analytics" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :search => 'body', :regexp => /analytics\.twitter\.com/  }
]
end