Plugin.define do
    name "appian" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /.suite.tempo.ui.sail-client.embeddedBootstrap.nocache.js/, :search => 'body'  }
]
end