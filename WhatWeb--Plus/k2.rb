Plugin.define do
    name "k2" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /<!--(?: JoomlaWorks "K2"| Start K2)/  }
]
end