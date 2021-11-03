Plugin.define do
    name "ibm_coremetrics" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :search => 'body', :regexp => /cmdatatagutils\.js/  }
]
end