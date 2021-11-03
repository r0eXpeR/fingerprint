Plugin.define do
    name "adinfinity" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /adinfinity\.com\.au/, :search => 'body'   },
    { :text => 'adinfinity.com.au/adapt'    }
]
end