Plugin.define do
    name "netlify" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :search => 'headers[server]', :regexp => /^Netlify/  }
]
end