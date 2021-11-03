Plugin.define do
    name "arvancloud" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /Arvan Cloud \(arvancloud\.com\)/, :search => 'headers[ar-poweredby]'  }
]
end