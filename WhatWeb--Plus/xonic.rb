Plugin.define do
    name "xonic" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /Powered by <a href="http:..www\.xonic-solutions\.de.index\.php" target="_blank">xonic-solutions Shopsoftware<.a>/  },
    { :regexp => /core.jslib.jquery\.xonic\.js\.php/, :search => 'body'  },
    { :search => 'body', :regexp => /xonic-solutions/  }
]
end