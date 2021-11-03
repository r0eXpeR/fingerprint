Plugin.define do
    name "enduro.js" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :search => 'headers[x-powered-by]', :regexp => /^enduro\.js/  }
]
end