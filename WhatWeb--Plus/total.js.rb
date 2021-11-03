Plugin.define do
    name "total.js" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /^total\.js/, :search => 'headers[x-powered-by]'  }
]
end