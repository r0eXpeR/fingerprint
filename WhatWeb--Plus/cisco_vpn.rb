Plugin.define do
    name "cisco_vpn" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :search => "headers", :text => 'webvpn'     },
    { :serach => 'headers', :text => 'webvpn'     },
    { :serach => 'headers', :text => 'webvpn'    }
]
end