Plugin.define do
    name "owl_carousel" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /<link [^>]*href="[^"]+owl\.carousel(?:\.min)?\.css/  },
    { :search => 'body', :regexp => /owl\.carousel.*\.js/  }
]
end