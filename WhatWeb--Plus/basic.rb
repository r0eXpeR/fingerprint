Plugin.define do
    name "basic" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /^Basic/, :search => 'headers[www-authenticate]'  }
]
end