Plugin.define do
    name "xcharts" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /<link[^>]* href="[^"]*xcharts(?:\.min)?\.css/  },
    { :regexp => /xcharts\.js/, :search => 'body'  }
]
end