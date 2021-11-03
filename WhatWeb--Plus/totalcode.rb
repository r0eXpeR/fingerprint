Plugin.define do
    name "totalcode" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /^TotalCode$/, :search => 'headers[x-powered-by]'  }
]
end