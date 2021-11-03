Plugin.define do
    name "beyable" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :offset => 1, :search => 'body', :regexp => /msecnd\.net.api.beYableJSv(\d+)/  }
]
end