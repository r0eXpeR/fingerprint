Plugin.define do
    name "airee" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :search => 'headers[server]', :regexp => /^Airee/  }
]
end