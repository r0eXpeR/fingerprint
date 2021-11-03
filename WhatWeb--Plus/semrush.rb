Plugin.define do
    name "semrush" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :search => 'body', :regexp => /www\.semrush\.com/  }
]
end