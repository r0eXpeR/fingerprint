Plugin.define do
    name "shellinabox" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /<title>Shell In A Box<.title>/  },
    { :regexp => /must be enabled for ShellInABox<.noscript>/  }
]
end