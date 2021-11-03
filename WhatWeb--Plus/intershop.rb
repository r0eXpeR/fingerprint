Plugin.define do
    name "intershop" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /(?:is-bin|INTERSHOP)/, :search => 'body'  },
    { :regexp => /<ish-root/  }
]
end