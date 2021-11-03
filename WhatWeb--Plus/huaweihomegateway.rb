Plugin.define do
    name "huaweihomegateway" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :search => "headers", :text => 'HuaweiHomeGateway'   },
    { :text => 'Menu.HomeGatewayTitle'   }
]
end