Plugin.define do
    name "eway_payments" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /<img [^>]*src="[^.]*..[^.]*eway\.com/  },
    { :regexp => /secure\.ewaypayments\.com/, :search => 'body'  }
]
end