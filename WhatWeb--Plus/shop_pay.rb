Plugin.define do
    name "shop_pay" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /<[^>]+aria-labelledby="pi-shopify_pay/  },
    { :search => 'body', :regexp => /cdn\.shopify\.com.shopifycloud.shopify_pay./  }
]
end