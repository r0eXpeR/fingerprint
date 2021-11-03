Plugin.define do
    name "cleverbridge" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /static-cf\.cleverbridge\.\w+.js.Shop\.js/, :search => 'body'  }
]
end