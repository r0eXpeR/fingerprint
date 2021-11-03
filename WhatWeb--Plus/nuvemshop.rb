Plugin.define do
    name "nuvemshop" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /<a target="_blank" title="Nuvemshop/  },
    { :regexp => /Nuvem/, :search => 'body'  }
]
end