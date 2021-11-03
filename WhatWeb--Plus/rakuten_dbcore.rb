Plugin.define do
    name "rakuten_dbcore" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /Rakuten DBCore/, :search => 'body'  },
    { :regexp => /http:..ecservice\.rakuten\.com\.br/, :search => 'body'  }
]
end