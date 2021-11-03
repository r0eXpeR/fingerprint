Plugin.define do
    name "eloqua" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :search => 'body', :regexp => /elqCfg\.js/  }
]
end