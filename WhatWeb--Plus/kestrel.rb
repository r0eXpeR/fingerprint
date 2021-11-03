Plugin.define do
    name "kestrel" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :search => 'headers[server]', :regexp => /^Kestrel/  }
]
end