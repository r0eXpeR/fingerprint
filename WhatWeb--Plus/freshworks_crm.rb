Plugin.define do
    name "freshworks_crm" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /cdn\.freshmarketer\.com/, :search => 'body'  },
    { :regexp => /cdn\.zarget\.com/, :search => 'body'  }
]
end