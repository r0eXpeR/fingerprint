Plugin.define do
    name "pagecdn" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /PageCDN/, :search => 'headers[x-cdn]'  }
]
end