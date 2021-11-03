Plugin.define do
    name "digest" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /^Digest/, :search => 'headers[www-authenticate]'  }
]
end