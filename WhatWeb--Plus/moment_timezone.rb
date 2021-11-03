Plugin.define do
    name "moment_timezone" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /moment-timezone(?:-data)?(?:\.min)?\.js/, :search => 'body'  }
]
end