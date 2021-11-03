Plugin.define do
    name "orderonline" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /^cdn\.orderonline\.id.$/, :search => 'body'  }
]
end