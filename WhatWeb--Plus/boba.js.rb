Plugin.define do
    name "boba.js" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /boba(?:\.min)?\.js/, :search => 'body'  }
]
end