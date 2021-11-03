Plugin.define do
    name "paybright" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /app\.paybright\.com/, :search => 'body'  }
]
end