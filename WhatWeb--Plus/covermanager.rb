Plugin.define do
    name "covermanager" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /<iframe[^>]*covermanager\.com.reservation/  }
]
end