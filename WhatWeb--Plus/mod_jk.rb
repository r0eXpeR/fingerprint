Plugin.define do
    name "mod_jk" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :search => "headers", :text => 'mod_jk'    },
    { :search => 'headers[server]',:offset => 1, :regexp => /mod_jk(?:.([\d\.]+))?/   }
]
end