Plugin.define do
    name "virgool" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :search => 'headers[x-powered-by]', :regexp => /^Virgool$/  }
]
end