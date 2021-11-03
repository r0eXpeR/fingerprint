Plugin.define do
    name "aegea" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /^E2 Aegea v(\d+)$/,:offset => 1, :search => 'headers[x-powered-by]'  }
]
end