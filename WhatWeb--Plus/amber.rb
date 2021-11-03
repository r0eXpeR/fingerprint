Plugin.define do
    name "amber" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :search => 'headers[x-powered-by]', :regexp => /^Amber$/  }
]
end