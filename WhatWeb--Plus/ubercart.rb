Plugin.define do
    name "ubercart" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :search => 'body', :regexp => /uc_cart.uc_cart_block\.js/  }
]
end