Plugin.define do
    name "pingoteam" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /Pingoteam/, :search => 'body'  }
]
end