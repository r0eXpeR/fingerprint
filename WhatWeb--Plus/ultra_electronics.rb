Plugin.define do
    name "ultra_electronics" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :text => '/preauth/login.cgi'   },
    { :text => '/preauth/style.css'   }
]
end