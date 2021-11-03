Plugin.define do
    name "kemal" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /Kemal/, :search => 'headers[x-powered-by]'  }
]
end