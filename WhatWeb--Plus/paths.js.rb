Plugin.define do
    name "paths.js" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /paths(?:\.min)?\.js/, :search => 'body'  }
]
end