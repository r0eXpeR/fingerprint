Plugin.define do
    name "siteglide" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :search => 'body', :regexp => /siteglide\.js/  }
]
end