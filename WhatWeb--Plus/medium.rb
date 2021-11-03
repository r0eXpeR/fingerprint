Plugin.define do
    name "medium" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /^Medium$/, :search => 'headers[x-powered-by]'  },
    { :search => 'body', :regexp => /medium\.com/  }
]
end