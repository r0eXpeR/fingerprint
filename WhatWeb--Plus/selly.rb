Plugin.define do
    name "selly" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /embed\.selly\.(?:gg|io)/, :search => 'body'  }
]
end