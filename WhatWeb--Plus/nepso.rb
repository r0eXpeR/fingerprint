Plugin.define do
    name "nepso" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :search => 'headers[x-powered-cms]', :regexp => /Nepso/  }
]
end