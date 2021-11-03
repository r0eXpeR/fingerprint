Plugin.define do
    name "microsoft_httpapi" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :search => 'headers[server]',:offset => 1, :regexp => /Microsoft-HTTPAPI(?:.([\d.]+))?/  }
]
end