Plugin.define do
    name "cartstack" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /api\.cartstack\.\w+/, :search => 'body'  }
]
end