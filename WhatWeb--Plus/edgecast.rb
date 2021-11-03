Plugin.define do
    name "edgecast" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :search => 'headers[server]', :regexp => /^ECD\s\(\S+\)/  }
]
end