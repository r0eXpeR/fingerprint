Plugin.define do
    name "recart" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :search => 'body', :regexp => /api\.recart\.com/  }
]
end