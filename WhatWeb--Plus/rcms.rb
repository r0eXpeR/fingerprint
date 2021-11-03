Plugin.define do
    name "rcms" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /^(?:RCMS|ReallyCMS)/, :search => 'body'  }
]
end