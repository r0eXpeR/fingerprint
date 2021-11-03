Plugin.define do
    name "twitter" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /..platform\.twitter\.com.widgets\.js/, :search => 'body'  }
]
end