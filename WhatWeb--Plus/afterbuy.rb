Plugin.define do
    name "afterbuy" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /<dd>This OnlineStore is brought to you by ViA-Online GmbH Afterbuy\. Information and contribution at https:..www\.afterbuy\.de<.dd>/  },
    { :search => 'body', :regexp => /shop-static\.afterbuy\.de/  }
]
end