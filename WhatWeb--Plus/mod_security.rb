Plugin.define do
    name "mod_security" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :search => "headers", :text => 'Mod_Security'   }
]
end