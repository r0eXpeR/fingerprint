Plugin.define do
    name "mercado_shops" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /frontend-assets.mshops-web-home.vendor/, :search => 'body'  }
]
end