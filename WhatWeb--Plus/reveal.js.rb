Plugin.define do
    name "reveal.js" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :search => 'body', :regexp => /(?:^|.)reveal(?:\.min)?\.js/  }
]
end