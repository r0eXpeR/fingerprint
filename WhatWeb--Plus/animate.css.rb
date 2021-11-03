Plugin.define do
    name "animate.css" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :offset => 1, :regexp => /<link [^>]+(?:.([\d.]+).)?animate\.(?:min\.)?css/  }
]
end