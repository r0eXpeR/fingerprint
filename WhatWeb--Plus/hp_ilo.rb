Plugin.define do
    name "hp_ilo" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :mmh3 => '2059618623'    },
    { :search => 'headers[server]',:offset => 1, :regexp => /HP-iLO-Server(?:.([\d.]+))?/   }
]
end