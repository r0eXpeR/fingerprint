Plugin.define do
    name "slick" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :offset => 1, :regexp => /(?:.([\d.]+))?.slick(?:\.min)?\.js/, :search => 'body'  },
    {:offset => 1, :regexp => /<link [^>]+(?:.([\d.]+).)?slick-theme\.css/  }
]
end