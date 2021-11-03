Plugin.define do
    name "leaflet" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /leaflet.{0,32}\.js/, :search => 'body'  }
]
end