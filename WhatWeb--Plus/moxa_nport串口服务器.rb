Plugin.define do
    name "moxa_nport串口服务器" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :search => "headers", :text => 'MoxaHttp'   }
]
end