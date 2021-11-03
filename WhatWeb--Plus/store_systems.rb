Plugin.define do
    name "store_systems" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /Shopsystem von <a href=[^>]+store-systems\.de/  }
]
end