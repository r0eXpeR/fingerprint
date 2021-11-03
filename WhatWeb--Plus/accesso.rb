Plugin.define do
    name "accesso" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :search => 'body', :regexp => /.embed.accesso\.js/  }
]
end