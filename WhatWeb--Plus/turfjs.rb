Plugin.define do
    name "turfjs" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /(turf@[\d.]+)?.?turf\.min\.js/, :search => 'body'  }
]
end