Plugin.define do
    name "next.js" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :offset => 1, :search => 'headers[x-powered-by]', :regexp => /^Next\.js ?([0-9.]+)?/  }
]
end