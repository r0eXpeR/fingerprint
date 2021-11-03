Plugin.define do
    name "express" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /^Express$/, :search => 'headers[x-powered-by]'  }
]
end