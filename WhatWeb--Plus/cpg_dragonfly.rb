Plugin.define do
    name "cpg_dragonfly" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /CPG Dragonfly/, :search => 'body'  },
    { :regexp => /^Dragonfly CMS/, :search => 'headers[x-powered-by]'  }
]
end