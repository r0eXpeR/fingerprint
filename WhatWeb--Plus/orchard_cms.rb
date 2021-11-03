Plugin.define do
    name "orchard_cms" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :search => 'body', :regexp => /Orchard/  }
]
end