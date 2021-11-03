Plugin.define do
    name "smart_ad_server" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /<img[^>]+smartadserver\.com\.call/  }
]
end