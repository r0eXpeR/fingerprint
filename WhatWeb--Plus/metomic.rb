Plugin.define do
    name "metomic" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /metomic\.js/, :search => 'body'  }
]
end