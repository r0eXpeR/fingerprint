Plugin.define do
    name "fomo" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /fomo\.com.api.v/, :search => 'body'  }
]
end