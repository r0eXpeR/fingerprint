Plugin.define do
    name "mod_security_waf" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :search => 'headers', :text => 'mod_security'  }
]
end