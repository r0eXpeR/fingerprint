Plugin.define do
    name "ideasoft" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :offset => 1, :regexp => /\.myideasoft\.com.([\d.]+)/, :search => 'body'  }
]
end