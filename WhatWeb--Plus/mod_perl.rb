Plugin.define do
    name "mod_perl" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :search => "headers", :text => 'mod_perl'    },
    { :search => 'headers[server]',:offset => 1, :regexp => /mod_perl(?:.([\d\.]+))?/   }
]
end