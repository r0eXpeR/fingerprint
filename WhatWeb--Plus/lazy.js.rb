Plugin.define do
    name "lazy.js" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :search => 'body', :regexp => /lazy(?:\.browser)?(?:\.min)?\.js/  }
]
end