Plugin.define do
    name "afosto" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /Afosto SaaS BV/, :search => 'headers[x-powered-by]'  }
]
end