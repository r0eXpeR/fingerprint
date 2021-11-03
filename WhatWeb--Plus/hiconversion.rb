Plugin.define do
    name "hiconversion" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :search => 'body', :regexp => /deploy\.hiconversion\.com/  }
]
end