Plugin.define do
    name "heartland_payment_systems" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :search => 'body', :regexp => /\.heartlandportico\.com/  }
]
end