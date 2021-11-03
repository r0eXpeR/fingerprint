Plugin.define do
    name "american_express" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /<[^>]+aria-labelledby="pi-american_express/  }
]
end