Plugin.define do
    name "crossbox" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :search => 'headers[server]', :regexp => /CBX-WS/  }
]
end