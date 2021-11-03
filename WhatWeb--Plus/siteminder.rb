Plugin.define do
    name "siteminder" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :search => 'body', :regexp => /widget\.siteminder\.com/  }
]
end