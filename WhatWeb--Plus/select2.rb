Plugin.define do
    name "select2" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /select2(?:\.min|\.full)?\.js/, :search => 'body'  }
]
end