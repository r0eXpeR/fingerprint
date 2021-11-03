Plugin.define do
    name "clickheat" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /clickheat.*\.js/, :search => 'body'  }
]
end