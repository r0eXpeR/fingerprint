Plugin.define do
    name "chartbeat" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :search => 'body', :regexp => /chartbeat\.js/  }
]
end