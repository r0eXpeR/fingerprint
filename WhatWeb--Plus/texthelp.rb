Plugin.define do
    name "texthelp" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /browsealoud\.com..*.browsealoud\.js/, :search => 'body'  }
]
end