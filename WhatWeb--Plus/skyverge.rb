Plugin.define do
    name "skyverge" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :offset => 1, :search => 'body', :regexp => /sv-wc-payment-gateway-payment-form\.js(?:\?ver=([\d.]+))?/  }
]
end