Plugin.define do
    name "adally" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :search => 'body', :regexp => /cloudfront\.net..*.adally\.js/  }
]
end