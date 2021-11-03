Plugin.define do
    name "jqtouch" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /jqtouch.*\.js/, :search => 'body'  }
]
end