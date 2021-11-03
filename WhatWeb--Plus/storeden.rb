Plugin.define do
    name "storeden" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :search => 'headers[x-powered-by]', :regexp => /Storeden/  }
]
end