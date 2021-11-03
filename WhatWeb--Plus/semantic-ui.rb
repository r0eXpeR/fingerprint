Plugin.define do
    name "semantic-ui" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /<link[^>]+semantic(?:\.min)\.css/  },
    {:offset => 1, :regexp => /.semantic(?:-([\d.]+))?(?:\.min)?\.js/, :search => 'body'  }
]
end