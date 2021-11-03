Plugin.define do
    name "cybersource" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /cybersource\..+\.js/, :search => 'body'  }
]
end