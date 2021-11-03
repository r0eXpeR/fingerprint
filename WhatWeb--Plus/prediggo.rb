Plugin.define do
    name "prediggo" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /js.prediggo.(?:[\w]+)\.js/, :search => 'body'  }
]
end