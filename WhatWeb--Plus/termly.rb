Plugin.define do
    name "termly" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :search => 'body', :regexp => /app\.termly\.io.embed\.min\.js/  }
]
end