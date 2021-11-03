Plugin.define do
    name "io4_cms" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /GO[ |]+CMS Enterprise/, :search => 'body'  }
]
end