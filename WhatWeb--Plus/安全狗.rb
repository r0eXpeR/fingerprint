Plugin.define do
    name "安全狗" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :search => "headers", :text => 'WAF/2.0'   }
]
end