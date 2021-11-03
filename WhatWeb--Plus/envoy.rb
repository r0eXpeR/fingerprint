Plugin.define do
    name "envoy" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :search => 'headers[server]', :regexp => /^envoy$/  }
]
end