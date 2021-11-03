Plugin.define do
    name "three.js" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /three(?:\.min)?\.js/, :search => 'body'  }
]
end