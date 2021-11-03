Plugin.define do
    name "dovetailwrp" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /<link[^>]* href="\.DovetailWRP\./  },
    { :regexp => /\.DovetailWRP\./, :search => 'body'  }
]
end