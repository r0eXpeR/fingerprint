Plugin.define do
    name "ef.js" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :search => 'body', :regexp => /.ef(?:-core)?(?:\.min|\.dev)?\.js/  }
]
end