Plugin.define do
    name "mozard_suite" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /Mozard/, :search => 'body'  }
]
end