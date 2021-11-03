Plugin.define do
    name "schneider_quantum_140noe77101" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :text => 'html/config.js'   },
    { :text => 'indexLanguage'   }
]
end