Plugin.define do
    name "irroba" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /<a[^>]*href="https:..www\.irroba\.com\.br/  }
]
end