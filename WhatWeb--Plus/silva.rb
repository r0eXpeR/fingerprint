Plugin.define do
    name "silva" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /SilvaCMS/, :search => 'headers[x-powered-by]'  }
]
end