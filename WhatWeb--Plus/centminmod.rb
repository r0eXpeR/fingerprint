Plugin.define do
    name "centminmod" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /centminmod/, :search => 'headers[x-powered-by]'  }
]
end