Plugin.define do
    name "shadow" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :search => 'headers[x-powered-by]', :regexp => /ShadowFramework/  }
]
end