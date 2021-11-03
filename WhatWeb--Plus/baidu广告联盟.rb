Plugin.define do
    name "baidu广告联盟" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :text => 'http://cbjs.baidu.com/js/m.js'   },
    { :text => 'http://cpro.baidu.com/cpro/ui/c.js'   }
]
end