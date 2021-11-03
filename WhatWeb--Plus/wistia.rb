Plugin.define do
    name "wistia" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /\.wistia\.com/, :search => 'body'  }
]
end