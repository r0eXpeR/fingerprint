Plugin.define do
    name "ip-label" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /clobs\.js/, :search => 'body'  }
]
end