Plugin.define do
    name "flow" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /flow\.min\.js/, :search => 'body'  },
    { :regexp => /shopify-cdn\.flow\.io/, :search => 'body'  }
]
end