Plugin.define do
    name "lightspeed_ecom" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /<!-- \[START\] 'blocks.head\.rain' -->/  },
    { :search => 'body', :regexp => /http:..assets\.webshopapp\.com/  }
]
end