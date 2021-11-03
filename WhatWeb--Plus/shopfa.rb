Plugin.define do
    name "shopfa" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :offset => 1, :regexp => /^ShopFA ([\d.]+)$/, :search => 'body'  },
    {:offset => 1, :regexp => /^ShopFA ([\d.]+)$/, :search => 'headers[x-powered-by]'  }
]
end