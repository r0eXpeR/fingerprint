Plugin.define do
    name "ntlm" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /^NTLM/, :search => 'headers[www-authenticate]'  }
]
end