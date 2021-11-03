Plugin.define do
    name "mod_fastcgi" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :search => "headers", :text => 'mod_fastcgi'    },
    { :search => 'headers[server]',:offset => 1, :regexp => /mod_fastcgi(?:.([\d.]+))?/   }
]
end