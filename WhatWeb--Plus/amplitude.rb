Plugin.define do
    name "amplitude" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :search => 'body', :regexp => /cdn\.amplitude\.com/  }
]
end