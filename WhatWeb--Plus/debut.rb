Plugin.define do
    name "debut" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :search => 'headers[server]',:offset => 1, :regexp => /debut\.?([\d\.]+)?/  }
]
end