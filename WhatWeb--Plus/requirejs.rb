Plugin.define do
    name "requirejs" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /require.*\.js/, :search => 'body'  }
]
end