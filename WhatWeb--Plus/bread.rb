Plugin.define do
    name "bread" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /\.getbread\.com/, :search => 'body'  }
]
end