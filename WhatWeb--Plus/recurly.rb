Plugin.define do
    name "recurly" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /<input[^>]+data-recurly/  },
    { :regexp => /js\.recurly\.com/, :search => 'body'  }
]
end