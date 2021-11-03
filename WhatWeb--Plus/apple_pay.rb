Plugin.define do
    name "apple_pay" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /<[^>]+aria-labelledby="pi-apple_pay/  },
    { :regexp => /<script id="apple-pay/  }
]
end