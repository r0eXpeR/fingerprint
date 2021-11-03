Plugin.define do
    name "klaviyo" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /klaviyo\.com/, :search => 'body'  }
]
end