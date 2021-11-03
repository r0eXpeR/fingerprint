Plugin.define do
    name "anetwork" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /static-cdn\.anetwork\.ir./, :search => 'body'  }
]
end