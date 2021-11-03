Plugin.define do
    name "loja_integrada" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /vtex-integrated-store/, :search => 'headers[x-powered-by]'  }
]
end