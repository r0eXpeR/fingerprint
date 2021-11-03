Plugin.define do
    name "mod_auth_kerb" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :search => "headers", :text => 'mod_auth_kerb'   }
]
end