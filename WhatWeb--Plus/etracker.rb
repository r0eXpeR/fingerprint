Plugin.define do
    name "etracker" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /\.etracker\.com/, :search => 'body'  }
]
end