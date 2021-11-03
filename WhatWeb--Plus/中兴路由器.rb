Plugin.define do
    name "中兴路由器" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :search => "headers", :text => 'Server: Mini web server 1.0 ZTE corp 2005.'   }
]
end