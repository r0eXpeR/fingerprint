Plugin.define do
    name "moat" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /moatads\.com/, :search => 'body'  }
]
end