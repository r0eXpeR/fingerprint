Plugin.define do
    name "basehttp" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :search => 'headers[server]', :regexp => /BaseHTTP\.?([\d\.]+)?/,:offset => 1  }
]
end