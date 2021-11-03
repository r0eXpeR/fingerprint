Plugin.define do
    name "facil-iti" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /ws\.facil-iti\.com.tag.faciliti-tag\.min\.js/, :search => 'body'  }
]
end