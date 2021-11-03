Plugin.define do
    name "pin_payments" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :search => 'body', :regexp => /api\.pinpayments\.com/  }
]
end