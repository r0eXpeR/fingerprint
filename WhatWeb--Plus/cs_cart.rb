Plugin.define do
    name "cs_cart" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /&nbsp;Powered by (?:<a href=[^>]+cs-cart\.com|CS-Cart)/  },
    { :regexp => /\.cm-noscript[^>]+<.style>/  }
]
end