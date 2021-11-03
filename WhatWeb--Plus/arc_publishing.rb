Plugin.define do
    name "arc_publishing" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /<div [^>]*id="pb-root/  }
]
end