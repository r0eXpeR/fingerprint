Plugin.define do
    name "craft_commerce" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /\bCraft Commerce\b/, :search => 'headers[x-powered-by]'  }
]
end