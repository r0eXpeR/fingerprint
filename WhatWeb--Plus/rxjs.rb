Plugin.define do
    name "rxjs" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :search => 'body', :regexp => /rx(?:\.\w+)?(?:\.compat|\.global)?(?:\.min)?\.js/  }
]
end