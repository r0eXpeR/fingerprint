Plugin.define do
    name "lum服务器管理" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :search => "headers", :text => 'LUM_SESSION'   }
]
end