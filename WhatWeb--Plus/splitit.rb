Plugin.define do
    name "splitit" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /checkout\.production\.splitit\.com/, :search => 'body'  }
]
end