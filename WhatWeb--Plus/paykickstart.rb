Plugin.define do
    name "paykickstart" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /app\.paykickstart\.com/, :search => 'body'  }
]
end