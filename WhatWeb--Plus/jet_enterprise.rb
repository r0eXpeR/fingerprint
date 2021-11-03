Plugin.define do
    name "jet_enterprise" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /jet-enterprise/, :search => 'headers[powered]'  }
]
end