Plugin.define do
    name "sails.js" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :search => 'headers[x-powered-by]', :regexp => /^Sails(?:$|[^a-z0-9])/  }
]
end