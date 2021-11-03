Plugin.define do
    name "microsoft_asp.net" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /<input[^>]+name="__VIEWSTATE/  },
    { :regexp => /^ASP\.NET/, :search => 'headers[x-powered-by]'  }
]
end