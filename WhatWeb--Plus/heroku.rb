Plugin.define do
    name "heroku" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /[\d.-]+ vegur$/, :search => 'headers[via]'  }
]
end