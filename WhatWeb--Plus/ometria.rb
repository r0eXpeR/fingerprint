Plugin.define do
    name "ometria" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /cdn\.ometria\.com/, :search => 'body'  }
]
end