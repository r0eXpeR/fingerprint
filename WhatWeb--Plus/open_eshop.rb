Plugin.define do
    name "open_eshop" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /open-eshop\.com/, :search => 'body'  },
    {:offset => 1, :regexp => /Open eShop ?([0-9.]+)?/, :search => 'body'  }
]
end