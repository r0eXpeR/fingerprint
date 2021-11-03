Plugin.define do
    name "coinimp" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /https?:..www\.hashing\.win.scripts.min\.js/, :search => 'body'  }
]
end