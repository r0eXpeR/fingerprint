Plugin.define do
    name "d盾_waf" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :status => '403', :text => 'D盾_拦截提示'  }
]
end