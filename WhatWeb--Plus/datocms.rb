Plugin.define do
    name "datocms" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /<[^>]+https:..www\.datocms-assets\.com/  }
]
end