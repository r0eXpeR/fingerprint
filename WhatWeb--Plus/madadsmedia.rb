Plugin.define do
    name "madadsmedia" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /^https?:..(?:ads-by|pixel)\.madadsmedia\.com./, :search => 'body'  }
]
end