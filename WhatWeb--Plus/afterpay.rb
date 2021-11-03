Plugin.define do
    name "afterpay" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /static\.afterpay\.com/, :search => 'body'  },
    { :search => 'body', :regexp => /portal\.afterpay\.com/  }
]
end