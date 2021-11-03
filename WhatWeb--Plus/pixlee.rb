Plugin.define do
    name "pixlee" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /assets\.pixlee\.com/, :search => 'body'  }
]
end