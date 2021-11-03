Plugin.define do
    name "爱思华宝信息服务器" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :search => "headers", :text => 'IceWarp'   },
    { :text => 'Powered by <a href="http://www.icewarp.com'   }
]
end