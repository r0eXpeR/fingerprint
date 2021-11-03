Plugin.define do
    name "liveperson" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /^https?:..lptag\.liveperson\.net.tag.tag\.js/, :search => 'body'  }
]
end