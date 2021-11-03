Plugin.define do
    name "bigware" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /(?:Diese <a href=[^>]+bigware\.de|<a href=[^>]+.main_bigware_\d+\.php)/  }
]
end