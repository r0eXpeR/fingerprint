Plugin.define do
    name "javashop" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :text => 'content="JavaShop'   },
    { :text => 'javashop微信公众号'   },
    { :text => '易族智汇javashop'   }
]
end