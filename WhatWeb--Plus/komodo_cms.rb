Plugin.define do
    name "komodo_cms" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /^Komodo CMS/, :search => 'body'  }
]
end