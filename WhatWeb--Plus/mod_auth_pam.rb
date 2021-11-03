Plugin.define do
    name "mod_auth_pam" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :search => "headers", :text => 'mod_auth_pam'    },
    { :search => 'headers[server]', :regexp => /mod_auth_pam(?:.([\d\.]+))?/,:offset => 1   }
]
end