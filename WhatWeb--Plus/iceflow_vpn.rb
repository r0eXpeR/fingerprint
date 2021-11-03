Plugin.define do
    name "iceflow_vpn" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :search => "headers", :text => 'Server: ICEFLOW'   }
]
end