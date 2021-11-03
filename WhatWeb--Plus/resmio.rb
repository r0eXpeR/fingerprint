Plugin.define do
    name "resmio" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :search => 'body', :regexp => /static\.resmio\.\w+.static./  }
]
end