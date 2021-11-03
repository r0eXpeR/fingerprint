Plugin.define do
    name "oxid_eshop" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :search => 'headers[set-cookie]', :regexp => /oxid/  }
]
end