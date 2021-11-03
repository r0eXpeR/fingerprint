Plugin.define do
    name "gocache" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :search => 'headers[server]', :regexp => /^gocache$/  }
]
end