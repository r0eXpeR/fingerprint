Plugin.define do
    name "duopana" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /(?:<!-- .*BeraCode script)/  },
    { :regexp => /\*berajs.beracode.com\*/, :search => 'body'  }
]
end