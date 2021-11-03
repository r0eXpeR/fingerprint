Plugin.define do
    name "kount" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :search => 'body', :regexp => /shopify\.kount\.net.js/  }
]
end