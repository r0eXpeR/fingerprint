Plugin.define do
    name "brightinfo" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /app\.brightinfo\.com/, :search => 'body'  }
]
end