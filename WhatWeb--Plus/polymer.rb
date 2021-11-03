Plugin.define do
    name "polymer" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /(?:<polymer-[^>]+|<link[^>]+rel="import"[^>]+.polymer\.html")/  },
    { :regexp => /polymer\.js/, :search => 'body'  }
]
end