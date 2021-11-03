Plugin.define do
    name "resy" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :search => 'body', :regexp => /widgets\.resy\.\w+/  }
]
end