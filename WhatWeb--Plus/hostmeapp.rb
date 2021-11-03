Plugin.define do
    name "hostmeapp" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /tables\.hostmeapp\.com/, :search => 'body'  }
]
end