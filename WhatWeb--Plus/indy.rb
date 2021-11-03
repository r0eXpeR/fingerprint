Plugin.define do
    name "indy" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :search => 'headers[server]',:offset => 1, :regexp => /Indy(?:.([\d.]+))?/  }
]
end