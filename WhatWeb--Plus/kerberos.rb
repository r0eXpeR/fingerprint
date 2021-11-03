Plugin.define do
    name "kerberos" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /^Kerberos/, :search => 'headers[www-authenticate]'  }
]
end