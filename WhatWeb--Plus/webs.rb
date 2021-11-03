Plugin.define do
    name "webs" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :search => 'headers[server]',:offset => 1, :regexp => /Webs\.com.?([\d\.]+)?/  }
]
end