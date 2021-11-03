Plugin.define do
    name "onesignal" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /cdn\.onesignal\.com/, :search => 'body'  }
]
end