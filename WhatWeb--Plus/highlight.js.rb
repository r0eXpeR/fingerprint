Plugin.define do
    name "highlight.js" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :offset => 1, :search => 'body', :regexp => /.(?:([\d.])+.)?highlight(?:\.min)?\.js/  }
]
end