Plugin.define do
    name "Nexus" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :serach => 'headers', :text => 'NX-ANTI-CSRF-TOKEN'   },
    { :text => 'Nexus Repository Manager'   }
]
end