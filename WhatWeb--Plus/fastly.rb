Plugin.define do
    name "fastly" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :search => 'headers[vary]', :regexp => /Fastly-SSL/  }
]
end