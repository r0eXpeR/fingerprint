Plugin.define do
    name "rakuten" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /tag\.rmp\.rakuten\.com/, :search => 'body'  }
]
end