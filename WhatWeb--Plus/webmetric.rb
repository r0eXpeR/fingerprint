Plugin.define do
    name "webmetric" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /cdn\.webmetric\.ir/, :search => 'body'  }
]
end