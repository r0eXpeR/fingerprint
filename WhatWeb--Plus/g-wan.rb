Plugin.define do
    name "g-wan" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :search => 'headers[server]', :regexp => /G-WAN/  }
]
end