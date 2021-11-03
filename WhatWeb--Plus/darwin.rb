Plugin.define do
    name "darwin" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /Darwin/, :search => 'headers[x-powered-by]'  },
    { :search => 'headers[server]', :regexp => /Darwin/  }
]
end