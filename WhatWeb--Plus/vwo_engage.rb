Plugin.define do
    name "vwo_engage" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /cdn\.pushcrew\.\w+/, :search => 'body'  }
]
end