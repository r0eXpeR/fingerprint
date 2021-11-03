Plugin.define do
    name "piano" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :search => 'body', :regexp => /\.piano\.io/  },
    { :search => 'body', :regexp => /\.tinypass\.com/  }
]
end