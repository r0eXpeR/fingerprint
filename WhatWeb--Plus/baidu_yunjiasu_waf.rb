Plugin.define do
    name "baidu_yunjiasu_waf" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :search => 'headers', :text => 'yunjiasu-nginx'  }
]
end