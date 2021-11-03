Plugin.define do
    name "raspbian" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /Raspbian/, :search => 'headers[x-powered-by]'  },
    { :search => 'headers[server]', :regexp => /Raspbian/  }
]
end