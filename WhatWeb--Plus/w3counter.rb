Plugin.define do
    name "w3counter" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /w3counter\.com.tracker\.js/, :search => 'body'  }
]
end