Plugin.define do
    name "caddy" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :search => 'headers[server]', :regexp => /^Caddy$/  }
]
end