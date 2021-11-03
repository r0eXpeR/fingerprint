Plugin.define do
    name "seravo" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /^Seravo/, :search => 'headers[x-powered-by]'  }
]
end