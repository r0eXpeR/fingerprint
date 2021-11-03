Plugin.define do
    name "conversionlab" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /conversionlab\.trackset\.com.track.tsend\.js/, :search => 'body'  }
]
end