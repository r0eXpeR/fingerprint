Plugin.define do
    name "lou" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /cdn\.louassist\.com*/, :search => 'body'  }
]
end