Plugin.define do
    name "cdn77" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :search => 'headers[server]', :regexp => /^CDN77-Turbo$/  }
]
end