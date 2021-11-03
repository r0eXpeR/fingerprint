Plugin.define do
    name "tp-link_3600_dd-wrt" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :search => "headers", :text => 'TP-Link 3600 DD-WRT'     },
    { :text => 'TP-Link 3600 DD-WRT'     },
    { :text => 'TP-Link 3600 DD-WRT'    }
]
end