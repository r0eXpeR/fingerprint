Plugin.define do
    name "peek" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :search => 'body', :regexp => /js\.peek\.\w+/  }
]
end