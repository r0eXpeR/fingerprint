Plugin.define do
    name "e107" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /[^a-z\d]e107\.js/, :search => 'body'  },
    { :regexp => /e107/, :search => 'headers[x-powered-by]'  }
]
end