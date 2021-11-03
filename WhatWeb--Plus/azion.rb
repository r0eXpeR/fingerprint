Plugin.define do
    name "azion" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :search => 'headers[server]', :regexp => /^Azion/  }
]
end