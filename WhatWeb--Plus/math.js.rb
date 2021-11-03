Plugin.define do
    name "math.js" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /math(?:\.min)?\.js/, :search => 'body'  }
]
end