Plugin.define do
    name "kamva" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /[CK]amva/, :search => 'body'  },
    { :regexp => /cdn\.mykamva\.ir/, :search => 'body'  }
]
end