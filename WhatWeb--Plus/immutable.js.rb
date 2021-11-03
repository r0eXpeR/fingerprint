Plugin.define do
    name "immutable.js" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /^immutable\.(?:min\.)?js$/, :search => 'body'  }
]
end