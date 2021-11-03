Plugin.define do
    name "svbtle" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /^Svbtle\.com$/, :search => 'body'  }
]
end