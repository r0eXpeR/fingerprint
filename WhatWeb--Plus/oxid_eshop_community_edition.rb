Plugin.define do
    name "oxid_eshop_community_edition" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /<!--[^-]*OXID eShop Community Edition, Version (\d+)/,:offset => 1  }
]
end