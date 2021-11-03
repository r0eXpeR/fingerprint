Plugin.define do
    name "安全宝" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :search => "headers", :text => 'X-Powered-By-Anquanbao'   }
]
end