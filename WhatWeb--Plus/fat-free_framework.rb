Plugin.define do
    name "fat-free_framework" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :search => 'headers[x-powered-by]', :regexp => /^Fat-Free Framework$/  }
]
end