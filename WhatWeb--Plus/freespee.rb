Plugin.define do
    name "freespee" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /analytics\.freespee\.com.js.external.fs\.(?:min\.)?js/, :search => 'body'  }
]
end