Plugin.define do
    name "livestreet_cms" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /LiveStreet CMS/, :search => 'headers[x-powered-by]'  }
]
end