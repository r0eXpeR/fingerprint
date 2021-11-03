Plugin.define do
    name "mean.io" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :search => 'headers[x-powered-cms]', :regexp => /Mean\.io/  }
]
end