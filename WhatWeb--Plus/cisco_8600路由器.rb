Plugin.define do
    name "cisco_8600路由器" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :search => "headers", :text => 'Cisco 8600'   }
]
end