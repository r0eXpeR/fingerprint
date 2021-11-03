Plugin.define do
    name "jetshop" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /<(?:div|aside) id="jetshop-branding">/  }
]
end