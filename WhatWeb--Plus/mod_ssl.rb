Plugin.define do
    name "mod_ssl" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :search => "headers", :text => 'mod_ssl'    },
    { :search => 'headers[server]', :regexp => /mod_ssl(?:.([\d.]+))?/,:offset => 1   }
]
end