Plugin.define do
    name "osano" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /cookieconsent\.min\.js/, :search => 'body'  }
]
end