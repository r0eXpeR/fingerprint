Plugin.define do
    name "shine.js" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /shine(?:\.min)?\.js/, :search => 'body'  }
]
end