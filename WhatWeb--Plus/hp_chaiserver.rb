Plugin.define do
    name "hp_chaiserver" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :search => 'headers[server]',:offset => 1, :regexp => /HP-Chai(?:Server|SOE)(?:.([\d.]+))?/  }
]
end