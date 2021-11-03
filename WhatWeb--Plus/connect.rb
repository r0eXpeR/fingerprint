Plugin.define do
    name "connect" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /^Connect$/, :search => 'headers[x-powered-by]'  }
]
end