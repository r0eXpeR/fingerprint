Plugin.define do
    name "contentbox" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /ContentBox powered by ColdBox/, :search => 'body'  }
]
end