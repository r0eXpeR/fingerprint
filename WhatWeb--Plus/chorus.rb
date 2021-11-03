Plugin.define do
    name "chorus" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /<meta data-chorus-version=/  }
]
end