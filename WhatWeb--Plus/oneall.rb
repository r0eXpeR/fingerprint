Plugin.define do
    name "oneall" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /api\.oneall\.com.socialize/, :search => 'body'  }
]
end