Plugin.define do
    name "akka_http" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :search => 'headers[server]', :regexp => /akka-http(?:.([\d.]+))?/,:offset => 1  }
]
end