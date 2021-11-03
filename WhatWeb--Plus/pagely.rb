Plugin.define do
    name "pagely" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :search => 'headers[server]', :regexp => /^Pagely/  }
]
end