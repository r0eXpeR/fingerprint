Plugin.define do
    name "catberry.js" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /Catberry/, :search => 'headers[x-powered-by]'  }
]
end