Plugin.define do
    name "neto" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /jquery\.neto.*\.js/, :search => 'body'  }
]
end