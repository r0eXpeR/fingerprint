Plugin.define do
    name "riot" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /riot(?:\+compiler)?(?:\.min)?\.js/, :search => 'body'  }
]
end