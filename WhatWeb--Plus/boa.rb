Plugin.define do
    name "boa" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :search => 'headers[server]',:offset => 1, :regexp => /Boa\.?([\d\.a-z]+)?/  }
]
end