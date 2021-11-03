Plugin.define do
    name "moment.js" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /moment(?:\.min)?\.js/, :search => 'body'  }
]
end