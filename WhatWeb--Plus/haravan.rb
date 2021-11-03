Plugin.define do
    name "haravan" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /haravan.*\.js/, :search => 'body'  }
]
end