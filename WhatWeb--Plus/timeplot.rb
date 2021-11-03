Plugin.define do
    name "timeplot" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /timeplot.*\.js/, :search => 'body'  }
]
end