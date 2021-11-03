Plugin.define do
    name "pendo" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :search => 'body', :regexp => /cdn\.pendo\.io*\.js/  }
]
end