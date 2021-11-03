Plugin.define do
    name "brightspot" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /^Brightspot$/, :search => 'headers[x-powered-by]'  }
]
end