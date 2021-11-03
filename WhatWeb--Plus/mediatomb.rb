Plugin.define do
    name "mediatomb" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :search => 'headers[server]', :regexp => /MediaTomb(?:.([\d.]+))?/,:offset => 1  }
]
end