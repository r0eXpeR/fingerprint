Plugin.define do
    name "keycdn" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :search => 'headers[server]', :regexp => /^keycdn-engine$/  }
]
end