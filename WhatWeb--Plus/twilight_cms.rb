Plugin.define do
    name "twilight_cms" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :search => 'headers[x-powered-cms]', :regexp => /Twilight CMS/  }
]
end