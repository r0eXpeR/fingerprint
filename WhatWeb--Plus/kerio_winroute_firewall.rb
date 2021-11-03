Plugin.define do
    name "kerio_winroute_firewall" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :search => "headers", :text => 'Kerio WinRoute Firewall'   },
    { :text => 'style/bodyNonauth.css'   }
]
end