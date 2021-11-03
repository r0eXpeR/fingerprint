Plugin.define do
    name "braintree" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :search => 'body', :regexp => /js\.braintreegateway\.com/  }
]
end