Plugin.define do
    name "pushengage" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /clientcdn\.pushengage\.\w+.core/, :search => 'body'  }
]
end