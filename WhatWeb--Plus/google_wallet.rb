Plugin.define do
    name "google_wallet" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /wallet\.google\.com/, :search => 'body'  },
    { :search => 'body', :regexp => /checkout\.google\.com/  }
]
end