Plugin.define do
    name "spnego" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /^Negotiate/, :search => 'headers[www-authenticate]'  }
]
end