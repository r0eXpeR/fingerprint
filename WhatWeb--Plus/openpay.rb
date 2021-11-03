Plugin.define do
    name "openpay" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /openpay\.com.\au/, :search => 'body'  }
]
end