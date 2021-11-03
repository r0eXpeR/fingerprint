Plugin.define do
    name "derak.cloud" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :search => 'headers[server]', :regexp => /^DERAK\.CLOUD$/  }
]
end