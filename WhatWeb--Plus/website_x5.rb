Plugin.define do
    name "website_x5" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :offset => 1, :search => 'body', :regexp => /Incomedia WebSite X5 (\w+ [\d.]+)/  }
]
end