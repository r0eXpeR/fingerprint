Plugin.define do
    name "tp-link无线路由器" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :search => "headers", :text => 'TP-LINK Wireless'   }
]
end