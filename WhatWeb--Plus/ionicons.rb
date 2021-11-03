Plugin.define do
    name "ionicons" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /<link[^>]* href=[^>]+ionicons(?:\.min)?\.css/  }
]
end