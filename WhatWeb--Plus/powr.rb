Plugin.define do
    name "powr" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /www\.powr\.io.powr\.js/, :search => 'body'  }
]
end