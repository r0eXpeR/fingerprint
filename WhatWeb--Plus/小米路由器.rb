Plugin.define do
    name "小米路由器" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :search => "headers", :text => 'Tx-Server: MiXr'   }
]
end