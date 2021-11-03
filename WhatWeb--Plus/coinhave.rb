Plugin.define do
    name "coinhave" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /https?:..coin-have\.com.c.[0-9a-zA-Z]{4}\.js/, :search => 'body'  }
]
end