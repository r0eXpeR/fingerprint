Plugin.define do
    name "onshop" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /.opencart_custom\.js/, :search => 'body'  },
    { :regexp => /Onshop Ecommerce/, :search => 'body'  }
]
end