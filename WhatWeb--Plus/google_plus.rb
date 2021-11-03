Plugin.define do
    name "google_plus" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /apis\.google\.com.js.[a-z]*\.js/, :search => 'body'  }
]
end