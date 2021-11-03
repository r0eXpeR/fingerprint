Plugin.define do
    name "fastspring" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /<a [^>]*href="https?:..sites\.fastspring\.com/  },
    { :regexp => /<form [^>]*action="https?:..sites\.fastspring\.com/  }
]
end