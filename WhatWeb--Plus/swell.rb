Plugin.define do
    name "swell" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /<[^>]*schema\.io/  },
    { :regexp => /<[^>]*swell\.is/  },
    { :regexp => /<[^>]*swell\.store/  }
]
end