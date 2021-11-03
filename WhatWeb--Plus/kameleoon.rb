Plugin.define do
    name "kameleoon" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /\.kameleoon\.\w+.kameleoon\.js/, :search => 'body'  }
]
end