Plugin.define do
    name "birdeye" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /birdeye\.com.embed/, :search => 'body'  },
    { :regexp => /birdeye\.com/, :search => 'body'  }
]
end