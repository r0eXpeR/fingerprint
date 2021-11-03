Plugin.define do
    name "craft_cms" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /\bCraft CMS\b/, :search => 'headers[x-powered-by]'  }
]
end