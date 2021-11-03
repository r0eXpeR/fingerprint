Plugin.define do
    name "nvd3" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /<link[^>]* href=[^>]+nv\.d3(?:\.min)?\.css/  },
    { :regexp => /nv\.d3(?:\.min)?\.js/, :search => 'body'  }
]
end