Plugin.define do
    name "shoplo" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :search => 'body', :regexp => /cdn\.shoplo\.\w+./  }
]
end