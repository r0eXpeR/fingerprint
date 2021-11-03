Plugin.define do
    name "visa_checkout" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /secure\.checkout\.visa\.com/, :search => 'body'  }
]
end