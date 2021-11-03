Plugin.define do
    name "wpbakery" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /WPBakery/, :search => 'body'  }
]
end