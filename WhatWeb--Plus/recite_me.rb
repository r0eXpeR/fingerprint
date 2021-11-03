Plugin.define do
    name "recite_me" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :search => 'body', :regexp => /api\.reciteme\.com.asset.js/  }
]
end