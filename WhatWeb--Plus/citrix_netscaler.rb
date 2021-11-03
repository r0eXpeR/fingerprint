Plugin.define do
    name "citrix_netscaler" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :search => "headers", :text => 'ns_af'     },
    { :text => 'ns_af'     },
    { :text => 'ns_af'    }
]
end