Plugin.define do
    name "raphael" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :offset => 1, :regexp => /raphael(?:-([\d.]+))?(?:\.min)?\.js/, :search => 'body'  }
]
end