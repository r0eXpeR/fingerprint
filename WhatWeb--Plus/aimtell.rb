Plugin.define do
    name "aimtell" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /cdn\.aimtell\.\w+./, :search => 'body'  }
]
end