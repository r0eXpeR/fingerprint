Plugin.define do
    name "twitter_ads" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /static\.ads-twitter\.com.uwt\.js/, :search => 'body'  }
]
end