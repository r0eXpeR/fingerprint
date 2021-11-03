Plugin.define do
    name "venmo" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /<[^>]+aria-labelledby="pi-venmo/  }
]
end