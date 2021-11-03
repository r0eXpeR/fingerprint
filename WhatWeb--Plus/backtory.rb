Plugin.define do
    name "backtory" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /Backtory/, :search => 'headers[x-powered-by]'  }
]
end