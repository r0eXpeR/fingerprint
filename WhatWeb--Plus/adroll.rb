Plugin.define do
    name "adroll" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :search => 'body', :regexp => /(?:a|s)\.adroll\.com/  }
]
end