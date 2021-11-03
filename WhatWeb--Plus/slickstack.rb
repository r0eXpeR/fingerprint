Plugin.define do
    name "slickstack" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /SlickStack/, :search => 'headers[x-powered-by]'  }
]
end