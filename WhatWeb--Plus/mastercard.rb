Plugin.define do
    name "mastercard" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /<[^>]+aria-labelledby="pi-mastercard/  }
]
end