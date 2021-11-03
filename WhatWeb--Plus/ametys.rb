Plugin.define do
    name "ametys" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /(?:Ametys|Anyware Technologies)/, :search => 'body'  },
    { :regexp => /ametys\.js/, :search => 'body'  }
]
end