Plugin.define do
    name "kontaktify" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /..(?:www\.)?kontaktify\.com.embed\.js/, :search => 'body'  }
]
end