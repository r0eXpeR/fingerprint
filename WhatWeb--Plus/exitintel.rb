Plugin.define do
    name "exitintel" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /(?:get.)?exitintel\.com/, :search => 'body'  }
]
end