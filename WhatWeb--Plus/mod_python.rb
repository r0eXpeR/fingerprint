Plugin.define do
    name "mod_python" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :search => "headers", :text => 'mod_python'    },
    { :search => 'headers[server]',:offset => 1, :regexp => /mod_python(?:.([\d.]+))?/   }
]
end