Plugin.define do
    name "valuecommerce" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /\.valuecommerce\.com/, :search => 'body'  }
]
end