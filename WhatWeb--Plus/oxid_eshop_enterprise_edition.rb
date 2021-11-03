Plugin.define do
    name "oxid_eshop_enterprise_edition" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :offset => 1, :regexp => /<!--[^-]*OXID eShop Enterprise Edition, Version (\d+)/  }
]
end