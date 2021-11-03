Plugin.define do
    name "clarity" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /<clr-main-container/  },
    { :regexp => /<link [^>]*href="[^"]*clr-ui(?:\.min)?\.css/  },
    { :regexp => /clr-angular(?:\.umd)?(?:\.min)?\.js/, :search => 'body'  }
]
end