Plugin.define do
    name "trackjs" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /tracker\.js/, :search => 'body'  }
]
end