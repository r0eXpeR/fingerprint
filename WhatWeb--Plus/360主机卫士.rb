Plugin.define do
    name "360主机卫士" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :search => "headers", :text => 'X-Safe-Firewall'     },
    { :serach => 'headers', :text => 'zhuji.360.cn'     },
    { :serach => 'headers', :text => 'zhuji.360.cn'    }
]
end