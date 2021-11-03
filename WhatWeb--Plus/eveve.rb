Plugin.define do
    name "eveve" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /<iframe[^>]*[\w]+\.eveve\.com/  }
]
end