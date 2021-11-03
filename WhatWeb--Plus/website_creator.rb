Plugin.define do
    name "website_creator" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /Website Creator by hosttech/, :search => 'body'  }
]
end