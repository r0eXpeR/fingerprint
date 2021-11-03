Plugin.define do
    name "腾讯宙斯盾_waf" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :search => 'headers', :text => 'SDWAF'  }
]
end