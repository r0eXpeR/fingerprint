Plugin.define do
    name "phpdebugbar" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /debugbar.*\.js/, :search => 'body'  }
]
end