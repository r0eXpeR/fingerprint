Plugin.define do
    name "reddit" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /(?:<a[^>]+Powered by Reddit|powered by <a[^>]+>reddit<)/  }
]
end