Plugin.define do
    name "trustpilot" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :search => 'body', :regexp => /\.trustpilot\.com/  }
]
end