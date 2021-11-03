Plugin.define do
    name "mono.net" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /monotracker(?:\.min)?\.js/, :search => 'body'  }
]
end