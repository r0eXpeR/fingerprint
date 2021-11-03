Plugin.define do
    name "tray" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /tcdn\.com\.br/, :search => 'body'  }
]
end