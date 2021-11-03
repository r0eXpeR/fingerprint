Plugin.define do
    name "tns_payments" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :search => 'body', :regexp => /secure\.ap\.tnspayments\.com/  }
]
end