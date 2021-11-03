Plugin.define do
    name "1und1" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :text => '/shop/catalog/browse?sessid='   }
]
end