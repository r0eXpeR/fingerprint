Plugin.define do
    name "hp_compact_server" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :search => 'headers[server]', :regexp => /HP_Compact_Server(?:.([\d.]+))?/,:offset => 1  }
]
end