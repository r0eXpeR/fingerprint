Plugin.define do
    name "simplehttp" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :search => 'headers[server]',:offset => 1, :regexp => /SimpleHTTP(?:.([\d.]+))?/  }
]
end