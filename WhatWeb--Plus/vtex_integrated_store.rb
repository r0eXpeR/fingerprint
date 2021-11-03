Plugin.define do
    name "vtex_integrated_store" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /vtex-integrated-store/, :search => 'headers[x-powered-by]'  }
]
end