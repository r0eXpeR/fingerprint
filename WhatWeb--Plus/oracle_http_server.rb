Plugin.define do
    name "oracle_http_server" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :search => 'headers[server]',:offset => 1, :regexp => /Oracle-HTTP-Server(?:.([\d.]+))?/  }
]
end