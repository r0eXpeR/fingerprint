Plugin.define do
    name "trustarc" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :search => 'body', :regexp => /consent\.trustarc\.com/  }
]
end