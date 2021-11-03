Plugin.define do
    name "pixijs" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /pixi\.(min\.)?js$/, :search => 'body'  }
]
end